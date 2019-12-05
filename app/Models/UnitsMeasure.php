<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class UnitsMeasure extends Model
{
    protected $fillable = [
        "name", "symbol",
    ];

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
