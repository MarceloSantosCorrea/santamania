<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Filter extends Model
{
    /**
     * @var array
     */
    protected $fillable = [
        'name', 'options', 'active',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'options' => 'array',
    ];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($item) {
            $uid = uniqid();
            while (self::where('uid', '=', $uid)->count() > 0) {
                $uid = uniqid();
            }
            $item->uid = $uid;
        });
    }
}
