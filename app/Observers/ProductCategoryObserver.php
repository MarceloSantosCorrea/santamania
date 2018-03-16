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
//        if (is_string($productCategory->active))
//            $productCategory->active = $productCategory->active == 'on' ? 1 : 0;
    }
}