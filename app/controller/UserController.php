<?php

namespace Tapera\RKATSite\Controller;

use Tapera\RKATSite\View;
use Tapera\RKATSite\Database;
use Tapera\RKATSite\Exception\ValidationException;
use Tapera\RKATSite\Model\UserCreateRequest;
use Tapera\RKATSite\Model\UserUpdateRequest;
use Tapera\RKATSite\Model\UserPasswordUpdateRequest;
use Tapera\RKATSite\Model\UserLoginRequest;
use Tapera\RKATSite\Repository\UserRepository;
use Tapera\RKATSite\Repository\SessionRepository;
use Tapera\RKATSite\Service\UserService;
use Tapera\RKATSite\Service\SessionService;

class UserController
{
    private UserService $userService;
    private SessionService $sessionService;

    public function __construct()
    {
        $connection = Database::getConnection();
        $userRepository = new UserRepository($connection);
        $this->userService = new UserService($userRepository);

        $sessionRepository = new SessionRepository($connection);
        $this->sessionService = new SessionService($sessionRepository, $userRepository);
    }

    public function newUser()
    {
        View::render('user/register', [
            'title' => 'Tambah Data'
        ]);
    }

    public function createUser()
    {
        $request = new UserCreateRequest();
        $request->username = $_POST['username'];
        $request->password = $_POST['password'];
        $request->direktorat_name = $_POST['direktorat_name'];
        $request->email = $_POST['email'];

        try {
            $this->userService->create($request);
            View::redirect('/users/login');
        } catch (ValidationException $exception) {
            View::render('user/register', [
                'title' => 'Tambah Data',
                'error' => $exception->getMessage()
            ]);
        }
    }

    public function editProfile()
    {
        $user = $this->sessionService->current();

        View::render('User/profile', [
            "title" => "Update user profile",
            "user" => [
                "username" => $user->username,
                "direktorat_name" => $user->direktorat_name,
                "email" => $user->email
            ]
        ]);
    }

    public function updateProfile()
    {
        $request = new UserUpdateRequest();

        $user = $this->sessionService->current();
        $request->id = $user->id;
        $request->username = $_POST['username'];
        $request->direktorat_name = $_POST['direktorat_name'];
        $request->email = $_POST['email'];

        try {
            $this->userService->update($request);
            View::redirect('/');
        } catch (ValidationException $exception) {
            View::render('User/profile', [
                "title" => "Update user profile",
                "error" => $exception->getMessage(),
                "user" => [
                    "username" => $user->username,
                    "direktorat_name" => $_POST['direktorat_name'],
                    "email" => $_POST['email']
                ]
            ]);
        }
    }

    public function editPassword()
    {
        $user = $this->sessionService->current();
        View::render('user/password', [
            "title" => "Update user password",
            "user" => [
                "username" => $user->username
            ]
        ]);
    }

    public function updatePassword()
    {
        $user = $this->sessionService->current();
        $request = new UserPasswordUpdateRequest();
        $request->username = $user->username;
        $request->oldPassword = $_POST['oldPassword'];
        $request->newPassword = $_POST['newPassword'];

        try {
            $this->userService->updatePassword($request);
            View::redirect('/');
        } catch (ValidationException $exception) {
            View::render('user/password', [
                "title" => "Update user password",
                "error" => $exception->getMessage(),
                "user" => [
                    "username" => $user->username
                ]
            ]);
        }
    }

    public function getLogin()
    {
        View::render('user/login', [
            "title" => "Login user"
        ]);
    }

    public function postLogin()
    {
        $request = new UserLoginRequest();
        $request->username = $_POST['username'];
        $request->password = $_POST['password'];

        try {
            $response = $this->userService->login($request);
            $this->sessionService->create($response->user->id);
            View::redirect('/');
        } catch (ValidationException $exception) {
            View::render('user/login', [
                'title' => 'Login user',
                'error' => $exception->getMessage()
            ]);
        }
    }

    public function logout()
    {
        $this->sessionService->destroy();
        View::redirect("/");
    }

}