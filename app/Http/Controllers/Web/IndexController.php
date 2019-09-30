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
        Filter::create([
            'name'    => 'Filter 01',
            'options' => [
                'feriado'      => true,
                'futebol'      => true,
                'is_period'    => true,
                'period_start' => '08:00:00',
                'period_end'   => '08:00:00',
            ],
        ]);


        if (\Gate::allows('home')) {

            $categories = ProductCategory::with(['product'])->get();

            $checklistPreview = Checklist::where('status', 0)
                                         ->orderBy('date', 'desc')->with(['checklistProduct'])->first();

            $tasks = Task::where(['status' => 1])->with(['product'])->get();

            return view('welcome', compact('categories', 'checklistPreview', 'tasks'));
        }

        return view('pages.acl.unauthorized');
    }

    public function logout()
    {
        Auth::logout();

        return redirect('login');
    }
}
