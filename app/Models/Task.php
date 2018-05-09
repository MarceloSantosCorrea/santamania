<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $fillable = [
        'product_id', 'description',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
