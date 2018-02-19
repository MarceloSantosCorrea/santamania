<?php

namespace App\Http\Controllers\Web;

use Auth;
use App\Http\Controllers\Controller;

class IndexController extends Controller
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
