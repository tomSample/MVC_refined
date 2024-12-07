<?php
require_once __DIR__ . '/../vendor/autoload.php';

use App\Controllers\HomeController;
use App\Controllers\UserController;
use App\Database;

$db = new Database();
$conn = $db->connect();

$requestUri = $_SERVER['REQUEST_URI'];

if ($requestUri === '/') {
    $controller = new HomeController();
    $controller->index();
} elseif ($requestUri === '/user') {
    $controller = new UserController();
    $controller->index();
} else {
    echo "404 Not Found";
}