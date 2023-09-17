<?php

namespace Tapera\RKATSite\Controller;

use Tapera\RKATSite\View;
use Tapera\RKATSite\Database;
use Tapera\RKATSite\Repository\SessionRepository;
use Tapera\RKATSite\Repository\UserRepository;
use Tapera\RKATSite\Service\SessionService;

class HomeController
{

    private SessionService $sessionService;

    public function __construct()
    {
        $connection = Database::getConnection();
        $sessionRepository = new SessionRepository($connection);
        $userRepository = new UserRepository($connection);
        $this->sessionService = new SessionService($sessionRepository, $userRepository);
    }


    function index()
    {
        $user = $this->sessionService->current();
        if ($user == null) {
            View::render('home/login', [
                "title" => "Login"
            ]);
        } else {
            View::render('home/dashboard', [
                "title" => "Dashboard",
                "user" => [
                    "username" => $user->username,
                    "direktorat_name" => $user->direktorat_name
                ]
            ]);
        }
    }

}
