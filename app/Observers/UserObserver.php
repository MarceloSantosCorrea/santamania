<?php

namespace App\Observers;

use App\Models\User;

class UserObserver
{
    public function saving(User $user)
    {
        echo "<pre>";
        print_r($user->password);
        echo "</pre>";
        exit();
        echo "<pre>";
        print_r('ok');
        echo "</pre>";
        exit();
        if ($user->password)
            $user->password = bcrypt($user->password);

        $user->name = "{$user->firstname} {$user->lastname}";
    }
}