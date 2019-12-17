<?php

namespace App\Events;

use App\Models\Product;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ProductEditedEvent
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
     * ProductEditedEvent constructor.
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
