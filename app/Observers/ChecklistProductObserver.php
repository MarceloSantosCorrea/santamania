<?php

namespace App\Observers;

use App\Models\ChecklistProduct;
use App\Models\ChecklistWarehouseQuantity;

class ChecklistProductObserver
{
    public function created(ChecklistProduct $checklistProduct)
    {
        if (! is_null($checklistProduct->quantities)) {
            $quantities = json_decode($checklistProduct->quantities, true);

            if (count($quantities)) {
                foreach ($quantities as $quantity) {
                    $quantity['checklist_product_id'] = $checklistProduct->id;
                    ChecklistWarehouseQuantity::create($quantity);
                }
            }
        }
    }

    public function saved(ChecklistProduct $checklistProduct)
    {
        if (! is_null($checklistProduct->quantities)) {
            $quantities = json_decode($checklistProduct->quantities, true);

            if (count($quantities)) {

                foreach ($quantities as $quantity) {

                    $checklistWarehouseQuantity = ChecklistWarehouseQuantity::where([
                        "warehouse_id"         => $quantity['warehouse_id'],
                        "checklist_product_id" => $checklistProduct->id,
                    ])->first();

                    $checklistWarehouseQuantity->update([
                        "quantity" => $quantity['quantity'],
                    ]);
                }
            }
        }
    }
}
