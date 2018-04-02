<?php

namespace App\Observers;

use App\Models\Product;

class ProductObserver
{
    public function creating(Product $product)
    {
        $product->active = 1;
    }

    public function saving(Product $product)
    {
        $product->active = ($product->active === 'on' || $product->active == 1) ? 1 : 0;
    }
}