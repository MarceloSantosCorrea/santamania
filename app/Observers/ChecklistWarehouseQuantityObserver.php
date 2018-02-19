<?php

namespace App\Observers;

use App\Models\ChecklistProduct;
use App\Models\ChecklistWarehouseQuantity;

class ChecklistWarehouseQuantityObserver
{
    public function created(ChecklistWarehouseQuantity $checklistWarehouseQuantity)
    {
        $this->updateTotalChecklistProduct($checklistWarehouseQuantity);
    }

    public function saved(ChecklistWarehouseQuantity $checklistWarehouseQuantity)
    {
        $this->updateTotalChecklistProduct($checklistWarehouseQuantity);
    }

    public function updated(ChecklistWarehouseQuantity $checklistWarehouseQuantity)
    {
        $this->updateTotalChecklistProduct($checklistWarehouseQuantity);
    }

    public function deleted(ChecklistWarehouseQuantity $checklistWarehouseQuantity)
    {
        $this->updateTotalChecklistProduct($checklistWarehouseQuantity);
    }

    private function updateTotalChecklistProduct(ChecklistWarehouseQuantity $checklistWarehouseQuantity)
    {
        $checkWareQuantSum = ChecklistWarehouseQuantity::where('checklist_product_id', $checklistWarehouseQuantity->checklist_product_id)->sum('quantity');

        $checklistProduct        = ChecklistProduct::find($checklistWarehouseQuantity->checklist_product_id);
        $checklistProduct->total = $checkWareQuantSum;
        $checklistProduct->save();
    }
}