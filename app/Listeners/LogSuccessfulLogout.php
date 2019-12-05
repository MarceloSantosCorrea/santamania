<?php

namespace App\Listeners;

use Illuminate\Auth\Events\Logout;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class LogSuccessfulLogout
{
    /**
     * Handle the event.
     *
     * @param  Logout  $event
     *
     * @return void
     */
    public function handle(Logout $event)
    {
        \Logs::database(
            'Authentication',
            $event->user->name." efetuou logout.",
            ['user_id' => $event->user->id]
        );
    }
}
