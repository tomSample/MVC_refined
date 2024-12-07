<?php
namespace App\Controllers;

class HomeController extends Controller {
    
    /**
     * @Route("/", name="home_index")
     */
    public function index() {
        $data = ['message' => 'Welcome to the Home Page!'];
        $this->render('home/index', $data);
    }
}