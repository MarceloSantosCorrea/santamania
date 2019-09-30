<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    protected $fillable = [
        "date", "quantity", "product_id",
    ];

    public function getDateAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d', $value);

        return $c->toW3cString();
    }

    public function search(string $string)
    {
        $date = \DateTime::createFromFormat('d/m/Y', $string);

        $qb = $this->with('product');

        if ($date) {
            $qb->where('date', $date->format('Y-m-d'));
        } else {
            $qb->where('id', $string)
               ->orWhere('quantity', 'like', '%'.$string.'%')
               ->orWhereHas('product', function ($query) use ($string) {
                   $query->where('name', 'like', '%'.$string.'%');
               });
        }

        return $qb;
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
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
