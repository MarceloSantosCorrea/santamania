<?php

namespace App\Observers;

use App\Models\User;

class UserObserver
{
    public function saving(User $user)
    {
        $user->name = "{$user->firstname} {$user->lastname}";
    }

    public function created(User $user)
    {
        \Logs::database(
            'Users',
            auth()->user()->name." criou um Usuário `#{$user->id}` - {$user->name} ".json_encode($user->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }

    public function updated(User $user)
    {
        $original = $user->getOriginal();
        $changes  = $user->getChanges();
        unset($changes["updated_at"]);
        $inputs = [];
        if (count($changes)) {
            foreach ($changes as $key => $val) {
                $inputs[$key] = [isset($original[$key]) ? $original[$key] : null => $val];
            }
        }

        if (count($inputs)) {
            \Logs::database(
                'Users',
                (auth()->user()->name ?? 'Sistema')." alterou um Usuário: ".json_encode($inputs),
                ['user_id' => auth()->user()->id ?? null]
            );
        }
    }

    public function deleted(User $user)
    {
        \Logs::database(
            'Users',
            auth()->user()->name." deletou um Usuário `#{$user->id}` - {$user->name} ".json_encode($user->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }
}
