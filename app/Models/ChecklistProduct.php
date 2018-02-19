<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChecklistProduct extends Model
{
    protected $fillable = [
        'checklist_id', 'product_id', 'quantities',
    ];

    public function checklist()
    {
        return $this->belongsTo(Checklist::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function quantities()
    {
        return $this->hasMany(ChecklistWarehouseQuantity::class);
    }
}
