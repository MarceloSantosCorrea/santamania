<?php

namespace App\Listeners;

use App\Events\SectorEditedEvent;
use App\Models\UserSector;

class SectorEditedUserSectorListener
{
    /**
     * Handle the event.
     *
     * @param  SectorEditedEvent  $event
     *
     * @return void
     */
    public function handle(SectorEditedEvent $event)
    {
        UserSector::updateByArray($event->sector, $event->data['users'] ?? []);
    }
}
