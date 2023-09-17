<?php

namespace Tapera\RKATSite\Middleware;

use Tapera\RKATSite\View;
use Tapera\RKATSite\Database;
use Tapera\RKATSite\Repository\SessionRepository;
use Tapera\RKATSite\Repository\UserRepository;
use Tapera\RKATSite\Service\SessionService;

class MustLoginMiddleware implements Middleware
{
    private SessionService $sessionService;

    public function __construct()
    {
        $sessionRepository = new SessionRepository(Database::getConnection());
        $userRepository = new UserRepository(Database::getConnection());
        $this->sessionService = new SessionService($sessionRepository, $userRepository);
    }

    function before(): void
    {
        $user = $this->sessionService->current();
        if ($user == null) {
            View::redirect('/users/login');
        }
    }
}
