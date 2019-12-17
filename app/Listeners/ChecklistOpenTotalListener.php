<?php

namespace App\Listeners;

use App\Events\ChecklistOpenedEvent;

class ChecklistOpenTotalListener
{
    /**
     * Handle the event.
     *
     * @param  ChecklistOpenedEvent  $event
     *
     * @return void
     */
    public function handle(ChecklistOpenedEvent $event)
    {
        if ($event->checklist->checklistProduct->count()) {
            /** @var \App\Models\ChecklistProduct $checklistProduct */
            foreach ($event->checklist->checklistProduct as $checklistProduct) {
                $checklistProduct->product->addCurrentQuantity($checklistProduct->checklist_tatals->output);
            }
        }
    }
}
