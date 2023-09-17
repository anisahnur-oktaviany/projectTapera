<?php

require_once __DIR__ . '/../vendor/autoload.php';

use Tapera\RKATSite\Router;
use Tapera\RKATSite\Controller\HomeController;
use Tapera\RKATSite\Controller\UserController;

use Tapera\RKATSite\Middleware\MustNotLoginMiddleware;
use Tapera\RKATSite\Middleware\MustLoginMiddleware;


Router::add('GET', '/', HomeController::class, 'index');

Router::add('GET', '/users/register', UserController::class, 'newUser', [MustNotLoginMiddleware::class]);
Router::add('POST', '/users/register', UserController::class, 'createUser', [MustNotLoginMiddleware::class]);

Router::add('GET', '/users/login', UserController::class, 'getLogin', [MustNotLoginMiddleware::class]);
Router::add('POST', '/users/login', UserController::class, 'postLogin', [MustNotLoginMiddleware::class]);
Router::add('GET', '/users/logout', UserController::class, 'logout', [MustLoginMiddleware::class]);

Router::add('GET', '/users/profile', UserController::class, 'editProfile', [MustLoginMiddleware::class]);
Router::add('POST', '/users/profile', UserController::class, 'updateProfile', [MustLoginMiddleware::class]);
Router::add('GET', '/users/password', UserController::class, 'editPassword', [MustLoginMiddleware::class]);
Router::add('POST', '/users/password', UserController::class, 'updatePassword', [MustLoginMiddleware::class]);

Router::run();
