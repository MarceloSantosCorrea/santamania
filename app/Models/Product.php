<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name', 'active', 'product_category_id', 'units_measure_id',
    ];

    public function checklistProduct()
    {
        return $this->hasOne(ChecklistProduct::class)->with(['checklist']);
    }

    public static function productsByChecklist(Checklist $checklist)
    {
        return self::where(['active' => 1])
            ->with(['checklistProduct' => function ($query) use ($checklist) {
                $query->where('checklist_id', $checklist->id);
            }])
            ->orderBy('name', 'asc')
            ->get();
    }

    public function productCategory()
    {
        return $this->belongsTo(ProductCategory::class);
    }

    public function unitsMeasure()
    {
        return $this->belongsTo(UnitsMeasure::class);
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
