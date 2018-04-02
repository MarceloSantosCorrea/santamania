<?php

namespace App\Observers;

use App\Models\ProductCategory;

class ProductCategoryObserver
{
    public function creating(ProductCategory $productCategory)
    {
        $productCategory->active = 1;
    }

    public function saving(ProductCategory $productCategory)
    {
        $productCategory->active = ($productCategory->active === 'on' || $productCategory->active == 1) ? 1 : 0;
    }
}