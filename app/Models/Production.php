<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    protected $fillable = [
        'date', 'quantity', 'product_id',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}