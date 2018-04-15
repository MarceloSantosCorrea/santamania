<?php

namespace App\Listeners;

use App\Events\ChecklistProductEvent;
use App\Models\ChecklistWarehouseQuantity;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class ChecklistWarehouseQuantityListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  ChecklistProductEvent $event
     * @return void
     */
    public function handle(ChecklistProductEvent $event)
    {

        echo "<pre>";
        print_r($event->checklistProduct->quantities);
        echo "</pre>";
        exit();

        if (!is_null($event->checklistProduct->quantities)) {



            $quantities = json_decode($event->checklistProduct->quantities, true);
            if (count($quantities)) {
                foreach ($quantities as $quantity) {
                    $quantity['checklist_product_id'] = $event->checklistProduct->id;
                    ChecklistWarehouseQuantity::create($quantity);
                }
            }
        }
    }
}
