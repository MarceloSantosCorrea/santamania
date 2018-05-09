<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class ProductDailyChecklist extends Model
{
    protected $table    = 'product_daily_checklist';
    protected $fillable = [
        'days', 'product_id',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function getCreatedAtAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }

    public function getUpdatedAtAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }
}