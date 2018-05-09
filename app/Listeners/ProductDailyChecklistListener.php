<?php

namespace App\Listeners;

use App\Events\ProductCreatedEvent;
use App\Models\ProductDailyChecklist;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class ProductDailyChecklistListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
    }

    /**
     * Handle the event.
     *
     * @param  ProductCreatedEvent $event
     * @return void
     */
    public function handle(ProductCreatedEvent $event)
    {
        ProductDailyChecklist::create([
            'product_id' => $event->product->id,
            'days'       => json_encode([0, 0, 0]),
        ]);
    }
}
