<?php

namespace App\Listeners;

use App\Events\ChecklistEditedEvent;
use App\Models\ChecklistFilter;

class ChecklistEditedChecklistFilterListener
{
    /**
     * Handle the event.
     *
     * @param  ChecklistEditedEvent  $event
     *
     * @return void
     */
    public function handle(ChecklistEditedEvent $event)
    {
        ChecklistFilter::updateByArray($event->checklist, $event->data['filters']);
    }
}
