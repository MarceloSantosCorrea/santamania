<?php

namespace App\Http\Controllers\Api;

use App\Models\Checklist;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ChecklistActionsController extends Controller
{
    public function close(Checklist $checklist)
    {
        return $checklist->closeChecklist($checklist);
    }
}
