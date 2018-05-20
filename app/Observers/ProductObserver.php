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

    public function created(Product $product)
    {
        \Log::info(auth()->user()->name . " criou produto: " . arrayToString($product->toArray()));
    }

    public function updated(Product $product)
    {
        \Log::info(auth()->user()->name . " editou produto: " . arrayToString($product->toArray()));
    }

    public function deleted(Product $product)
    {
        \Log::info(auth()->user()->name . " deletou produto: " . arrayToString($product->toArray()));
    }
}