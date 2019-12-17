<?php

namespace App\Listeners;

use App\Events\ProductEditedEvent;
use App\Models\ProductWarehouse;

class ProductEditeProductWarehousesListener
{
    /**
     * @param  ProductEditedEvent  $event
     */
    public function handle(ProductEditedEvent $event)
    {
        $ids = [];
        if (\Arr::has($event->data, 'warehouses')) {
            foreach ($event->data['warehouses'] as $warehouse) {
                $data = [
                    'product_id'   => $event->product->id,
                    'warehouse_id' => $warehouse,
                ];
                if ($model = ProductWarehouse::query()->where($data)->first()) {
                    $ids[] = $model->id;
                } else {
                    $model = ProductWarehouse::query()->create($data);
                    $ids[] = $model->id;
                }
            }
        }

        ProductWarehouse::query()->whereNotIn('id', $ids)
                        ->where('product_id', $event->product->id)
                        ->delete();
    }
}
