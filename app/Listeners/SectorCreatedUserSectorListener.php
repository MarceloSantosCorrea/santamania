<?php

namespace App\Listeners;

use App\Events\SectorCreatedEvent;
use App\Models\UserSector;

class SectorCreatedUserSectorListener
{
    /**
     * Handle the event.
     *
     * @param  SectorCreatedEvent  $event
     *
     * @return void
     */
    public function handle(SectorCreatedEvent $event)
    {
        if (\Arr::has($event->data, 'users')) {
            if (count($event->data['users'])) {
                UserSector::createByArray($event->sector, $event->data['users']);
            }
        }
    }
}
