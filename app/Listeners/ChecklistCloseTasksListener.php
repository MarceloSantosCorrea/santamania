<?php

namespace App\Listeners;

use App\Events\ChecklistClosedEvent;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class ChecklistCloseTasksListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  ChecklistClosedEvent  $event
     * @return void
     */
    public function handle(ChecklistClosedEvent $event)
    {
        //
    }
}
