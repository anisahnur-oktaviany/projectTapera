<?php

namespace Tapera\RKATSite\Service;

use Tapera\RKATSite\Database;
use Tapera\RKATSite\Domain\User;
use Tapera\RKATSite\Exception\ValidationException;
use Tapera\RKATSite\Model\UserLoginRequest;
use Tapera\RKATSite\Model\UserLoginResponse;
use Tapera\RKATSite\Model\UserPasswordUpdateRequest;
use Tapera\RKATSite\Model\UserPasswordUpdateResponse;
use Tapera\RKATSite\Model\UserUpdateRequest;
use Tapera\RKATSite\Model\UserUpdateResponse;
use Tapera\RKATSite\Model\UserCreateRequest;
use Tapera\RKATSite\Model\UserCreateResponse;
use Tapera\RKATSite\Repository\UserRepository;

class UserService
{
    private UserRepository $userRepository;

    public function __construct(UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function create(UserCreateRequest $request): UserCreateResponse
    {
        $this->createRequestValidator($request);

        try {
            Database::beginTransaction();
            $user = $this->userRepository->findByUsername($request->username);
            if ($user != null) {
                throw new ValidationException("Username already exists");
            }

            $user = new User();
            $user->username = $request->username;
            $user->password = password_hash($request->password, PASSWORD_BCRYPT);
            $user->direktorat_name = $request->direktorat_name;
            $user->email = $request->email;

            $this->userRepository->save($user);

            $response = new UserCreateResponse();
            $response->user = $user;

            Database::commitTransaction();
            return $response;
        } catch (\Exception $exception) {
            Database::rollbackTransaction();
            throw $exception;
        }
    }

    private function createRequestValidator(UserCreateRequest $request)
    {
        if (
            $request->username == null ||
            $request->password == null ||
            $request->direktorat_name == null ||
            $request->email == null ||
            trim($request->username) == "" ||
            trim($request->password) == "" ||
            trim($request->direktorat_name) == "" ||
            trim($request->email) == ""
        ) {
            throw new ValidationException("Username, Password, Directorat Name, Email can not blank");
        }
    }

    public function update(UserUpdateRequest $request): UserUpdateResponse
    {
        $this->updateRequestValidator($request);

        try {
            Database::beginTransaction();

            $user = $this->userRepository->findById($request->id);
            if ($user == null) {
                throw new ValidationException("User is not found");
            }

            $user->username = $request->username;
            $user->direktorat_name = $request->direktorat_name;
            $user->email = $request->email;
            $this->userRepository->update($user);

            Database::commitTransaction();

            $response = new UserUpdateResponse();
            $response->user = $user;
            return $response;
        } catch (\Exception $exception) {
            Database::rollbackTransaction();
            throw $exception;
        }
    }

    private function updateRequestValidator(UserUpdateRequest $request)
    {
        if (
            $request->username == null ||
            $request->direktorat_name == null ||
            $request->email == null ||
            trim($request->username) == "" ||
            trim($request->direktorat_name) == "" ||
            trim($request->email) == ""
        ) {
            throw new ValidationException("Username, Direktorat Name, Email can not blank");
        }
    }

    public function updatePassword(UserPasswordUpdateRequest $request): UserPasswordUpdateResponse
    {
        $this->passwordUpdateRequestValidator($request);

        try {
            Database::beginTransaction();

            $user = $this->userRepository->findByUsername($request->username);
            if ($user == null) {
                throw new ValidationException("User is not found");
            }

            if (!password_verify($request->oldPassword, $user->password)) {
                throw new ValidationException("Old password is wrong");
            }

            $user->password = password_hash($request->newPassword, PASSWORD_BCRYPT);
            $this->userRepository->update($user);

            Database::commitTransaction();

            $response = new UserPasswordUpdateResponse();
            $response->user = $user;
            return $response;
        } catch (\Exception $exception) {
            Database::rollbackTransaction();
            throw $exception;
        }
    }

    private function passwordUpdateRequestValidator(UserPasswordUpdateRequest $request)
    {
        if (
            $request->username == null ||
            $request->oldPassword == null ||
            $request->newPassword == null ||
            trim($request->username) == "" ||
            trim($request->oldPassword) == "" ||
            trim($request->newPassword) == ""
        ) {
            throw new ValidationException("Old Password, New Password can not blank");
        }
    }

    public function login(UserLoginRequest $request): UserLoginResponse
    {
        $this->loginRequestValidator($request);

        $user = $this->userRepository->findByUsername($request->username);
        if ($user == null) {
            throw new ValidationException("username or password is wrong");
        }

        if (password_verify($request->password, $user->password)) {
            $response = new UserLoginResponse();
            $response->user = $user;
            return $response;
        } else {
            throw new ValidationException("username or password is wrong");
        }
    }

    private function loginRequestValidator(UserLoginRequest $request)
    {
        if (
            $request->username == null ||
            $request->password == null ||
            trim($request->username) == "" ||
            trim($request->password) == ""
        ) {
            throw new ValidationException("Username, Password can not blank");
        }
    }

}
