<?php

namespace App\Observers;

use App\Models\Task;

class TaskObserver
{
    /**
     * Handle the task "created" event.
     *
     * @param  \App\Models\Task  $task
     *
     * @return void
     */
    public function created(Task $task)
    {
        \Logs::database(
            'Tasks',
            auth()->user()->name." criou uma Tarefa `#{$task->id}` - {$task->description} ".json_encode($task->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }

    /**
     * Handle the task "updated" event.
     *
     * @param  \App\Models\Task  $task
     *
     * @return void
     */
    public function updated(Task $task)
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
                'Tasks',
                auth()->user()->name." alterou uma Tarefa `#{$task->id}` - {$task->description} ".json_encode($inputs),
                ['user_id' => auth()->user()->id]
            );
        }
    }

    /**
     * Handle the task "deleted" event.
     *
     * @param  \App\Models\Task  $task
     *
     * @return void
     */
    public function deleted(Task $task)
    {
        \Logs::database(
            'Tasks',
            auth()->user()->name." deletou uma Tarefa `#{$task->id}` - {$task->description} ".json_encode($task->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }
}
