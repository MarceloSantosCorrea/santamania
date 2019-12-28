<?php

namespace App\Listeners;

use App\Events\ChecklistCreatedEvent;
use App\Models\ChecklistFilter;

class ChecklistCreatedChecklistFilterListener
{
    public function handle(ChecklistCreatedEvent $event)
    {
        if (\Arr::has($event->data, 'filters')) {
            if (count($event->data['filters'])) {
                ChecklistFilter::createByArray($event->checklist, $event->data['filters']);
            }
        }
    }
}
