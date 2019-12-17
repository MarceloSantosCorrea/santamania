<?php

use Illuminate\Database\Seeder;

class WarehouseTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $warehouses = [
            'Local 01',
        ];

        foreach ($warehouses as $warehouse) {
            DB::table('warehouses')->insert([
                'name'       => $warehouse,
                'active'     => 1,
                "created_at" => new \DateTime("now"),
                "updated_at" => new \DateTime("now"),
            ]);
        }
    }
}
