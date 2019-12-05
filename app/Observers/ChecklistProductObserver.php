<?php

namespace App\Observers;

use App\Models\ChecklistProduct;
use App\Models\ChecklistWarehouseQuantity;
use Illuminate\Database\Eloquent\Model;

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

        \Logs::database(
            'Checklist Product',
            auth()->user()->name." adicionou contagem: Checklist `#{$checklistProduct->checklist_id}` Produto `{$checklistProduct->product->name}` Total `{$checklistProduct->total}{$checklistProduct->product->unitsMeasure->symbol}`",
            ['user_id' => auth()->user()->id]
        );
    }

    public function updated(Model $model)
    {
        $original = $model->getOriginal();
        $changes  = $model->getChanges();
        unset($changes["updated_at"]);
        $inputs = [];
        if (count($changes)) {
            foreach ($changes as $key => $val) {
                $inputs[$key] = [isset($original[$key]) ? $original[$key] : null => $val];
            }
        }

        if (count($inputs)) {
            \Logs::database(
                'Checklist',
                auth()->user()->name." editou o contagem: Checklist `#{$model->checklist_id}` Produto `{$model->product->name}` Total `{$model->total}{$model->product->unitsMeasure->symbol}`, ".json_encode($inputs),
                ['user_id' => auth()->user()->id]
            );
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
