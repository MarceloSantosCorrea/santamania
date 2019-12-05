<?php

namespace App\Listeners;

use App\Events\SectorEditedEvent;
use App\Models\SectorProduct;

class SectorEditedSectorProductListener
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
        SectorProduct::updateByArray($event->sector, $event->data['products'] ?? []);
    }
}
