<?php

namespace App\Observers;

use App\Models\Production;
use App\Models\Task;

class ProductionObserver
{
    public function creating(Production $production)
    {
        $production->product->addCurrentQuantity($production->quantity);
    }

    public function created(Production $production)
    {
        \Logs::database(
            'Productions',
            auth()->user()->name." adicionou entrada ao estoque: `#{$production->id}` - {$production->product->name} ".json_encode($production->toArray()),
            ['user_id' => auth()->user()->id]
        );

        $tasks = Task::where([
            'product_id' => $production->product_id,
            'status'     => 1,
        ])->get();
        if ($tasks->count()) {
            /** @var \App\Models\Task $task */
            foreach ($tasks as $task) {
                $task->finalize();
            }
        }
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
                auth()->user()->name." alterou entrada ao estoque: Produto `#{$production->product->id} {$production->product->name}` ".json_encode($inputs),
                ['user_id' => auth()->user()->id]
            );

            if (isset($inputs['quantity'])) {
                if ($original['quantity'] > $changes['quantity']) {
                    $value = $original['quantity'] - $changes['quantity'];
                    $production->product->removeCurrentQuantity($value);
                } else {
                    $value = $changes['quantity'] - $original['quantity'];
                    $production->product->addCurrentQuantity($value);
                }
            }
        }
    }

    public function deleted(Production $production)
    {
        \Logs::database(
            'Users',
            auth()->user()->name." deletou entrada ao estoque `#{$production->id}` - {$production->name} ".json_encode($production->toArray()),
            ['user_id' => auth()->user()->id]
        );

        $production->product->removeCurrentQuantity($production->quantity);
    }
}
