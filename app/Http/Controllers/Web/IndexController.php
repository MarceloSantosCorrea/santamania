<?php

namespace App\Http\Controllers\Web;

use Auth;

class IndexController extends AbstractController
{
    public function index()
    {
        return view('welcome');
    }

    public function logout()
    {
        Auth::logout();

        return redirect('login');
    }
}
