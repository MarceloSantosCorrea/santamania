<?php

namespace App\Listeners;

use App\Events\ProductCreatedEvent;

class ProductCreateProductWarehousesListener
{
    /**
     * Handle the event.
     *
     * @param  ProductCreatedEvent  $event
     * @return void
     */
    public function handle(ProductCreatedEvent $event)
    {
        dd($event);
    }
}
