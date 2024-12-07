<?php
namespace App\Controllers;

use App\Models\User;

class UserController extends Controller {

    /**
     * @Route("/user", name="user_index")
     */
    public function index() {
        $userModel = new User();
        $users = $userModel->getUsers();
        $this->render('user/index', [
            'users' => $users
        ]);
    }
}