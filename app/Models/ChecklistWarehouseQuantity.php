<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChecklistWarehouseQuantity extends Model
{
    protected $fillable = [
        'warehouse_id', 'checklist_product_id', 'quantity',
    ];
}
