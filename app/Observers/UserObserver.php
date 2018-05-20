<?php

namespace App\Observers;

use App\Models\User;

class UserObserver
{
    public function saving(User $user)
    {
        $user->level = 1;
        $user->name  = "{$user->firstname} {$user->lastname}";
    }

    public function created(User $user)
    {
        \Log::info(auth()->user()->name . " criou usuário: " . arrayToString($user->toArray()));
    }

    public function updated(User $user)
    {
        \Log::info(auth()->user()->name . " editou usuário: " . arrayToString($user->toArray()));
    }

    public function deleted(User $user)
    {
        \Log::info(auth()->user()->name . " deletou usuário: " . arrayToString($user->toArray()));
    }
}