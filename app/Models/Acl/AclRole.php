<?php

namespace App\Models\Acl;

use Illuminate\Database\Eloquent\Model;

class AclRole extends Model
{
    protected $fillable = [
        'name', 'label',
    ];
}
