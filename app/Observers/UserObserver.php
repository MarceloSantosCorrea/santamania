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
}