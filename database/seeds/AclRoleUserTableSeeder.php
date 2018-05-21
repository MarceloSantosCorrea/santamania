<?php

use Illuminate\Database\Seeder;

class AclRoleUserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('acl_role_user')->insert([
            'user_id'     => 1,
            'acl_role_id' => 1,
        ]);

        DB::table('acl_role_user')->insert([
            'user_id'     => 2,
            'acl_role_id' => 1,
        ]);
    }
}
