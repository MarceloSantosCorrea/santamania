<?php

namespace App\Observers;

use App\Models\Checklist;

class ChecklistObserver
{
    public function creating(Checklist $checklist)
    {
        $checklist->status = 1;
    }
}