<?php

namespace App\Http\Controllers\Web;

use App\Models\Checklist;
use App\Models\Filter;
use App\Models\ProductCategory;
use App\Models\Task;
use Auth;

class IndexController extends AbstractController
{
    public function index()
    {
        $categories = ProductCategory::with(['product'])->orderBy('name')->get();

        $checklistPreview = Checklist::where('status', 0)
                                     ->orderBy('date', 'desc')->with(['checklistProduct'])->first();

        $tasks = Task::where(['status' => 1])->with(['product'])->get();

        return view('welcome', compact('categories', 'checklistPreview', 'tasks'));
    }

    public function logout()
    {
        Auth::logout();

        return redirect('login');
    }
}
