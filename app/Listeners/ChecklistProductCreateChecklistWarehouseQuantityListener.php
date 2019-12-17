<?php

namespace App\Listeners;

use App\Events\ChecklistProductCreatedEvent;
use App\Models\ChecklistWarehouseQuantity;

class ChecklistProductCreateChecklistWarehouseQuantityListener
{
    /**
     * @param  ChecklistProductCreatedEvent  $event
     */
    public function handle(ChecklistProductCreatedEvent $event)
    {
        foreach ($event->data['quantities'] as $warehouse => $quantity) {
            $data = [
                'checklist_product_id' => $event->checklistProduct->id,
                'warehouse_id'         => $warehouse,
                'quantity'             => $quantity,
            ];
            ChecklistWarehouseQuantity::create($data);
        }
    }
}
