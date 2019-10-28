<?php

namespace App\Listeners;

use Illuminate\Auth\Events\Login;

class LogSuccessfulLogin
{
    /**
     * Handle the event.
     *
     * @param  Login  $event
     *
     * @return void
     */
    public function handle(Login $event)
    {
        \Logs::database(
            'Authentication',
            auth()->user()->name." efetuou login.",
            ['user_id' => auth()->user()->id]
        );
    }
}
