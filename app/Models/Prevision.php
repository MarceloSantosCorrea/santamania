<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prevision extends Model
{
    protected $fillable = [
        "product_id", "prevision_date",
    ];
}
