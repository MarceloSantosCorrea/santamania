<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Log extends Model
{
    protected $fillable = [
        'uid', 'type', 'message', 'user_id',
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
