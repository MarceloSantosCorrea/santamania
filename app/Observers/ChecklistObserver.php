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
        \Logs::database(
            'Checklist',
            auth()->user()->name." criou o checklist ID: {$checklist->id} para o dia: {$this->getDate()}",
            ['user_id' => auth()->user()->id]
        );
    }

    public function updated(Checklist $checklist)
    {
        $original = $checklist->getOriginal();
        $changes  = $checklist->getChanges();
        unset($changes["updated_at"]);
        $inputs = [];
        if (count($changes)) {
            foreach ($changes as $key => $val) {
                $inputs[$key] = [isset($original[$key]) ? $original[$key] : null => $val];
            }
        }

        if (count($inputs)) {
            \Logs::database(
                'Checklist',
                auth()->user()->name." editou o checklist ID: {$checklist->id} para o dia: {$this->getDate()}, ".json_encode($inputs),
                ['user_id' => auth()->user()->id]
            );
        }
    }

    public function deleted(Checklist $checklist)
    {
        \Logs::database(
            'Checklist',
            auth()->user()->name." deletou o checklist ID: {$checklist->id} para o dia: {$this->getDate()}",
            ['user_id' => auth()->user()->id]
        );
    }

    private function getDate()
    {
        return (new \DateTime('now', new \DateTimeZone('America/Sao_Paulo')))->format('d/m/Y H:i:s');
    }
}
