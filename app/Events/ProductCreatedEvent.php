<?php

namespace App\Events;

use App\Models\Product;
use Illuminate\Queue\SerializesModels;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;

class ProductCreatedEvent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    /**
     * @var Product
     */
    public $product;
    /**
     * @var array
     */
    public $data;

    /**
     * Create a new event instance.
     *
     * @param  Product  $product
     * @param  array  $data
     */
    public function __construct(Product $product, Array $data = [])
    {
        $this->product = $product;
        $this->data    = $data;
    }
}
