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
        \Logs::database(
            'Products',
            auth()->user()->name." criou produto: ".json_encode($product->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }

    public function updated(Product $product)
    {
        $original = $product->getOriginal();
        $changes  = $product->getChanges();
        unset($changes["updated_at"]);
        $inputs = [];
        if (count($changes)) {
            foreach ($changes as $key => $val) {
                $inputs[$key] = [isset($original[$key]) ? $original[$key] : null => $val];
            }
        }

        if (count($inputs)) {
            \Logs::database(
                'Products',
                auth()->user()->name." alterou o produto: ".json_encode($inputs),
                ['user_id' => auth()->user()->id]
            );
        }
    }

    public function deleted(Product $product)
    {
        \Logs::database(
            'Products',
            auth()->user()->name." deletou o produto: `#{$product->id}` - `{$product->name}` ".json_encode($product->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }
}
