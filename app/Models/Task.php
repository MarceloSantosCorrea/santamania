<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $fillable = [
        "product_id", "description", "status",
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function finalize()
    {
        return self::update(['status' => 0]);
    }
}
