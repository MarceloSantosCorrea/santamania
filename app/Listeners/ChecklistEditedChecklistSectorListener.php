<?php

namespace App\Listeners;

use App\Events\ChecklistEditedEvent;
use App\Models\ChecklistSector;

class ChecklistEditedChecklistSectorListener
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
        ChecklistSector::updateByArray($event->checklist, $event->data['sectors']);
    }
}
