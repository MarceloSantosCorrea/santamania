<?php

namespace App\Observers;

use App\Models\ChecklistProduct;

class ChecklistProductObserver
{
    public function created(ChecklistProduct $checklistProduct)
    {
        echo "<pre>";
        print_r('created');
        echo "</pre>";
    }

    public function updated(ChecklistProduct $checklistProduct)
    {
        echo "<pre>";
        print_r('updated');
        echo "</pre>";
    }
}