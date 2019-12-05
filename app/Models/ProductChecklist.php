<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductChecklist extends Model
{
    protected $fillable = [
        "checklist_id", "product_id", "quantities", "total",
    ];
}
