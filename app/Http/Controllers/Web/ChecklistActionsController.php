<?php

namespace App\Http\Controllers\Web;

class ChecklistActionsController extends AbstractController
{
    public function close()
    {
        echo "<pre>";
        print_r('teste close');
        echo "</pre>";
        exit();
    }
}
