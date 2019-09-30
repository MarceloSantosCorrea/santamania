<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Warehouse extends Model
{
    protected $fillable = [
        "name", "active",
    ];

    public function checklistWarehouseQuantities()
    {
        return $this->hasOne(ChecklistWarehouseQuantity::class);
    }

    public static function warehouseWithQuantities(ChecklistProduct $checklistProduct)
    {
        return self::where(["active" => 1])
            ->with(["checklistWarehouseQuantities" => function ($query) use ($checklistProduct) {
                $query->where('checklist_product_id', $checklistProduct->id);
            }])
            ->get();
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
