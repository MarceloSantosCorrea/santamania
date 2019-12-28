<?php

namespace App\Http\Controllers\Web;

use App\Models\{Product, Task};

class IndexController extends AbstractController
{
    public function index()
    {
        $tasks    = Task::where(['status' => 1])->with(['product'])->get();
        $products = Product::where(['active' => 1])->get();

        return view('pages.home.welcome', compact('products', 'tasks'));
    }

    public function logout()
    {
        \Auth::logout();

        return redirect('login');
    }
}
