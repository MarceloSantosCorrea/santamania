<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductFilter extends Model
{
    protected $fillable = [
        'product_id', 'filter_id', 'value',
    ];
}
