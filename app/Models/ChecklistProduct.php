<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class ChecklistProduct extends Model
{
    protected $fillable = [
        'checklist_id', 'product_id', 'quantities', 'total',
    ];

    public function checklist()
    {
        return $this->belongsTo(Checklist::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class)->with('unitsMeasure');
    }

    public function quantities()
    {
        return $this->hasMany(ChecklistWarehouseQuantity::class);
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
