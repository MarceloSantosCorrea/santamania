<?php

namespace App\Observers;

use App\Models\ProductCategory;

class ProductCategoryObserver
{
    public function creating(ProductCategory $productCategory)
    {
        $productCategory->active = 1;
    }

    public function created(ProductCategory $productCategory)
    {
        \Logs::database(
            'Product Category',
            auth()->user()->name." criou uma Categoria de Produto `#{$productCategory->id}` - {$productCategory->name} ".json_encode($productCategory->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }

    public function updated(ProductCategory $productCategory)
    {
        $original = $productCategory->getOriginal();
        $changes  = $productCategory->getChanges();
        unset($changes["updated_at"]);
        $inputs = [];
        if (count($changes)) {
            foreach ($changes as $key => $val) {
                $inputs[$key] = [isset($original[$key]) ? $original[$key] : null => $val];
            }
        }

        if (count($inputs)) {
            \Logs::database(
                'Product Category',
                auth()->user()->name." alterou uma Categoria de Produto: ".json_encode($inputs),
                ['user_id' => auth()->user()->id]
            );
        }
    }

    public function saving(ProductCategory $productCategory)
    {
        $productCategory->active = ($productCategory->active === 'on' || $productCategory->active == 1) ? 1 : 0;
    }

    public function deleted(ProductCategory $productCategory)
    {
        \Logs::database(
            'Product Category',
            auth()->user()->name." deletou uma Categoria de Produto: {$productCategory->id} - {$productCategory->name} ".json_encode($productCategory->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }
}
