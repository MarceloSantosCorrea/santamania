<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $fillable = ['name', 'color'];

    public static function search(string $string)
    {
        $qb = self::class;
        $qb->where('id', $string)->orWhere('name', 'like', '%'.$string.'%');

        return $qb;
    }
}
