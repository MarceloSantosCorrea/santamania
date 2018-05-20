<?php

namespace App\Http\Controllers\Web;

use App\Models\Checklist;
use App\Models\ChecklistTotal;
use App\Http\Controllers\Controller;

class ChecklistTotalController extends Controller
{
    public function index(Checklist $checklist)
    {
        $checklistTotal = ChecklistTotal::where([
            'checklist_id' => $checklist->id,
        ])->with(['checklist', 'checklistProduct'])->get();

        $date               = (new \DateTime($checklist->date))->format('Y-m-d');
        $checklistAnterior  = Checklist::where('date', '<', $date)->where('status', 0)->orderBy('date', 'desc')->first();
        $checklistPosterior = Checklist::where('date', '>', $date)->where('status', 0)->first();

        return view('pages.checklist-total.index',
            compact('checklist', 'checklistTotal', 'checklistAnterior', 'checklistPosterior'));
    }
}
