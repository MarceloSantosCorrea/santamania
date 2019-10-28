<?php

namespace App\Http\Controllers\Api;

use App\Models\Checklist;
use App\Models\ProductCategory;
use App\Models\Task;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $categories = ProductCategory::with(['product'])->get();

        $checklistPreview = Checklist::where('status', 0)
                                     ->orderBy('date', 'desc')->with(['checklistProduct'])->first();

        $tasks = Task::where(['status' => 1])->with(['product'])->get();

        return compact('categories', 'checklistPreview', 'tasks');
    }
}
