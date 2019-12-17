<?php

namespace App\Listeners;

use App\Events\ChecklistProductEditedEvent;
use App\Models\ChecklistWarehouseQuantity;

class ChecklistProductEditeChecklistWarehouseQuantityListener
{
    /**
     * @param  ChecklistProductEditedEvent  $event
     *
     * @throws \Exception
     */
    public function handle(ChecklistProductEditedEvent $event)
    {
        $id = [];
        foreach (array_filter($event->data['quantities']) as $warehouse => $quantity) {

            $data = [
                'checklist_product_id' => $event->checklistProduct->id,
                'warehouse_id'         => $warehouse,
                'quantity'             => $quantity,
            ];

            /** @var \App\Models\ChecklistWarehouseQuantity $model */
            if ($model = ChecklistWarehouseQuantity::where([
                'checklist_product_id' => $event->checklistProduct->id,
                'warehouse_id'         => $warehouse,
            ])->first()) {
                $model->quantity = $quantity;
                $model->save();
                $id[] = $model->id;
            } else {
                $model = ChecklistWarehouseQuantity::create($data);
                $id[]  = $model->id;
            }
        }

        ChecklistWarehouseQuantity::whereNotIn('id', $id)->where([
            'checklist_product_id' => $event->checklistProduct->id,
        ])->delete();
    }
}
