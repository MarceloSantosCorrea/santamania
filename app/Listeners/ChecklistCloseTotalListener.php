<?php

namespace App\Listeners;

use App\Events\ChecklistClosedEvent;
use App\Models\ChecklistTotal;

class ChecklistCloseTotalListener
{
    /**
     * Handle the event.
     *
     * @param  ChecklistClosedEvent  $event
     *
     * @return void
     */
    public function handle(ChecklistClosedEvent $event)
    {
        if ($event->checklist->checklistProduct->count()) {
            /** @var \App\Models\ChecklistProduct $checklistProduct */
            foreach ($event->checklist->checklistProduct as $checklistProduct) {

                $output = ($checklistProduct->product->current_quantity - $checklistProduct->total);

                if ($model = ChecklistTotal::query()->where([
                    'checklist_id'         => $event->checklist->id,
                    'checklist_product_id' => $checklistProduct->id,
                ])->first()) {
                    $model->output = $output;
                    $model->save();
                } else {
                    ChecklistTotal::query()->create([
                        'checklist_id'         => $event->checklist->id,
                        'checklist_product_id' => $checklistProduct->id,
                        'output'               => $output,
                    ]);
                }

                $checklistProduct->product->removeCurrentQuantity($output);
            }
        }
    }
}
