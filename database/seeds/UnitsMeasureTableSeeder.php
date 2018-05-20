<?php

use Illuminate\Database\Seeder;

class UnitsMeasureTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $units_measures = [
            'Quilograma' => 'Kg',
            'Balde'      => 'Bl',
            'Unidade'    => 'Un',
        ];

        foreach ($units_measures as $k => $v) {
            DB::table('units_measures')->insert([
                'name'       => $k,
                'symbol'     => $v,
                "created_at" => new \DateTime("now"),
                "updated_at" => new \DateTime("now"),
            ]);
        }
    }
}
