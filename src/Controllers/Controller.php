<?php
namespace App\Controllers;

class Controller {
    public function render($view, $data = []) {
        extract($data);
        require_once __DIR__ . '/../Views/' . $view . '.php';
    }
}