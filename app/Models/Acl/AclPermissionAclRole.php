<?php

namespace App\Models\Acl;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class AclPermissionAclRole extends Model
{
    protected $table      = 'acl_permission_acl_role';
    public    $timestamps = false;
    protected $fillable   = [
        "acl_permission_id", "acl_role_id",
    ];


    public static function savePermissions(Array $permissions = [], AclRole $role)
    {
        self::where(['acl_role_id' => $role->id])->delete();

        if ($permissions) {
            foreach ($permissions as $permission) {
                self::create(['acl_permission_id' => $permission, 'acl_role_id' => $role->id]);
            }
        }

        return true;
    }
}
