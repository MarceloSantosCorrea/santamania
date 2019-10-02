<?php

namespace App\Observers;

use App\Models\Production;

class ProductionObserver
{
    public function created(Production $production)
    {
        \Logs::database(
            'Productions',
            auth()->user()->name." adicionou entrada ao estoque: `#{$production->id}` - {$production->product->name} ".json_encode($production->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }

    public function updated(Production $production)
    {
        $original = $production->getOriginal();
        $changes  = $production->getChanges();
        unset($changes["updated_at"]);
        $inputs = [];
        if (count($changes)) {
            foreach ($changes as $key => $val) {
                $inputs[$key] = [isset($original[$key]) ? $original[$key] : null => $val];
            }
        }

        if (count($inputs)) {
            \Logs::database(
                'Productions',
                auth()->user()->name." alterou entrada ao estoque: ".json_encode($inputs),
                ['user_id' => auth()->user()->id]
            );
        }
    }

    public function deleted(Production $production)
    {
        \Logs::database(
            'Users',
            auth()->user()->name." deletou entrada ao estoque `#{$production->id}` - {$production->name} ".json_encode($production->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }
}
