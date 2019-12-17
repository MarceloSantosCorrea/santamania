<?php

namespace App\Listeners;

use App\Events\ProductCreatedEvent;
use App\Models\ProductWarehouse;

class ProductCreateProductWarehousesListener
{
    /**
     * Handle the event.
     *
     * @param  ProductCreatedEvent  $event
     *
     * @return void
     */
    public function handle(ProductCreatedEvent $event)
    {
        if (\Arr::has($event->data, 'warehouses')) {
            foreach ($event->data['warehouses'] as $warehouse) {
                $data = ['product_id' => $event->product->id, 'warehouse_id' => $warehouse];
                ProductWarehouse::query()->create($data);
            }
        }
    }
}
