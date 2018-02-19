<?php

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ChecklistActionsController extends Controller
{
    public function close()
    {
        echo "<pre>";
        print_r('teste close');
        echo "</pre>";
        exit();
    }
}
