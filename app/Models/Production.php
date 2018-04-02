<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    protected $fillable = [
        'date', 'quantity', 'product_id',
    ];

    public function getDateAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}