<?php

namespace App\Observers;

use App\Models\ProductCategory;

class ProductCategoryObserver
{
    public function creating(ProductCategory $productCategory)
    {
        $productCategory->active = 1;
    }

    public function updating(ProductCategory $productCategory)
    {
        $productCategory->active = $productCategory->active == 'on' ? 1 : 0;
    }
}