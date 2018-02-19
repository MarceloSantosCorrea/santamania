<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name', 'active', 'product_category_id', 'units_measure_id',
    ];

    public function productCategory()
    {
        return $this->belongsTo(ProductCategory::class);
    }

    public function unitsMeasure()
    {
        return $this->belongsTo(UnitsMeasure::class);
    }
}
