<?php

use Illuminate\Database\Seeder;

class AclPermissionAclRoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $aclPermissions = \App\Models\Acl\AclPermission::all();
        foreach ($aclPermissions as $aclPermission) {
            DB::table('acl_permission_acl_role')->insert([
                'acl_permission_id' => $aclPermission->id,
                'acl_role_id'       => 1,
            ]);
        }
    }
}
