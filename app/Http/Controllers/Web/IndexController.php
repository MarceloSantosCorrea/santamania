<?php

namespace App\Http\Controllers\Web;

use App\Models\{Checklist, Product, ProductCategory, Sector, Task};

class IndexController extends AbstractController
{
    public function index()
    {
        $categories = Product::listProductsFront();

//        dd($categories);


        //        $categories = ProductCategory::with(['product'])
        //                                     ->orderBy('name')
        //                                     ->get();


        $checklistPreview = Checklist::where('status', 0)
                                     ->orderBy('date', 'desc')
                                     ->with(['checklistProduct'])
                                     ->first();

        $tasks = Task::where(['status' => 1])->with(['product'])->get();

        return view('welcome', compact('categories', 'checklistPreview', 'tasks'));
    }

    public function logout()
    {
        \Auth::logout();

        return redirect('login');
    }
}
