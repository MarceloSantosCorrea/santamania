<?php

namespace App\Observers;

use App\Models\Checklist;

class ChecklistObserver
{
    public function creating(Checklist $checklist)
    {
        $checklist->status = 1;
    }

    public function created(Checklist $checklist)
    {
        \Log::info(auth()->user()->name . " criou o checklist ID: {$checklist->id} para o DIA: " . (new \DateTime($checklist->date))->format('d/m/Y'));
    }

    public function updated(Checklist $checklist)
    {
        \Log::info(auth()->user()->name . " editou o checklist ID: {$checklist->id} para o DIA: " . (new \DateTime($checklist->date))->format('d/m/Y'));
    }

    public function deleted(Checklist $checklist)
    {
        \Log::info(auth()->user()->name . " deletou o checklist ID: {$checklist->id} para o DIA: " . (new \DateTime($checklist->date))->format('d/m/Y'));
    }
}