<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChecklistTotal extends Model
{
    protected $fillable = [
        "checklist_id", "checklist_product_id", "output",
    ];

    public function checklist()
    {
        return $this->belongsTo(Checklist::class);
    }

    public function checklistProduct()
    {
        return $this->belongsTo(ChecklistProduct::class)->with(["product"]);
    }

}
