<?php

namespace App\Observers;

use App\Models\UnitsMeasure;

class UnitsMeasureObserver
{
    /**
     * Handle the task "created" event.
     *
     * @param  \App\Models\UnitsMeasure  $task
     *
     * @return void
     */
    public function created(UnitsMeasure $task)
    {
        \Logs::database(
            'Units Measure',
            auth()->user()->name." criou uma Unidade de Medida `#{$task->id}` - {$task->name} ".json_encode($task->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }

    /**
     * Handle the task "updated" event.
     *
     * @param  \App\Models\UnitsMeasure  $task
     *
     * @return void
     */
    public function updated(UnitsMeasure $task)
    {
        $original = $task->getOriginal();
        $changes  = $task->getChanges();
        unset($changes["updated_at"]);
        $inputs = [];
        if (count($changes)) {
            foreach ($changes as $key => $val) {
                $inputs[$key] = [isset($original[$key]) ? $original[$key] : null => $val];
            }
        }

        if (count($inputs)) {
            \Logs::database(
                'Units Measure',
                auth()->user()->name." alterou uma Unidade de Medida `#{$task->id}` - {$task->name} ".json_encode($inputs),
                ['user_id' => auth()->user()->id]
            );
        }
    }

    /**
     * Handle the task "deleted" event.
     *
     * @param  \App\Models\UnitsMeasure  $task
     *
     * @return void
     */
    public function deleted(UnitsMeasure $task)
    {
        \Logs::database(
            'Units Measure',
            auth()->user()->name." deletou uma Unidade de Medida `#{$task->id}` - {$task->name} ".json_encode($task->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }
}
