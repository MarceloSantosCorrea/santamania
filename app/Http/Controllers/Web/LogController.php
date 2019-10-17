<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LogController extends Controller
{
    public function index()
    {
        $data = \App\Models\Log::orderBy('id', 'DESC')->paginate(30);;

        return view('pages.logs.index', compact('data'));
    }
}
