<?php

namespace App\Listeners;

use App\Events\ChecklistCreatedEvent;
use App\Models\ChecklistSector;

class ChecklistCreatedChecklistSectorListener
{
    /**
     * Handle the event.
     *
     * @param  ChecklistCreatedEvent  $event
     *
     * @return void
     */
    public function handle(ChecklistCreatedEvent $event)
    {
        if (\Arr::has($event->data, 'sectors')) {
            if (count($event->data['sectors'])) {
                ChecklistSector::createByArray($event->checklist, $event->data['sectors']);
            }
        }
    }
}
