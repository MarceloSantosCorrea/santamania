<?php

namespace App\Listeners;

use App\Events\SectorCreatedEvent;
use App\Models\SectorProduct;

class SectorCreatedSectorProductListener
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
        if (\Arr::has($event->data, 'products')) {
            if (count($event->data['products'])) {
                SectorProduct::createByArray($event->sector, $event->data['products']);
            }
        }
    }
}
