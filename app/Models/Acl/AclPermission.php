<?php

namespace App\Models\Acl;

use Illuminate\Database\Eloquent\Model;

class AclPermission extends Model
{
    protected $fillable = [
        'name', 'label',
    ];

    public function roles()
    {
        return $this->belongsToMany(AclRole::class);
    }
}
