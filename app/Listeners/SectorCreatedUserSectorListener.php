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
        if (\Arr::has($event->data, 'user_id')) {
            UserSector::query()->create([
                'user_id'   => $event->data['user_id'],
                'sector_id' => $event->sector->id,
            ]);
        }
    }
}
