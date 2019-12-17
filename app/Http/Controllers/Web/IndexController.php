<?php

namespace App\Http\Controllers\Web;

use App\Models\{Checklist, Product, ProductCategory, Sector, Task};

class IndexController extends AbstractController
{
    public function index()
    {
        $categories = Product::listProductsFront();

        $tasks = Task::where(['status' => 1])->with(['product'])->get();

        $products = \App\Models\Product::query()->where('active', 1)->bySector()->get();

        return view('welcome', compact('categories', 'products', 'tasks'));
    }

    public function logout()
    {
        \Auth::logout();

        return redirect('login');
    }
}
