<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
    protected $fillable = [
        "name", "active",
    ];

    public function product()
    {
        return $this->hasMany(Product::class)->with('productDailyChecklist');
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
