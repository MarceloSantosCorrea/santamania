<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
//            SectorTableSeeder::class,
//            ProductCategoryTableSeeder::class,
            UnitsMeasureTableSeeder::class,
//            ProductTableSeeder::class,
//            WarehouseTableSeeder::class,
            UsersTableSeeder::class,
//            ProductDailyChecklistTableSeeder::class,
            AclRoleUserTableSeeder::class,
            AclPermissionAclRoleTableSeeder::class,
            FilterTableSeeder::class,
        ]);
    }
}
