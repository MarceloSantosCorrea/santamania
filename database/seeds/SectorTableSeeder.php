<?php

use Illuminate\Database\Seeder;

class SectorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach (['Setor 01', 'Setor 02', 'Setor 03', 'Setor 04', 'Setor 05'] as $sector) {
            DB::table('sectors')->insert([
                "name"       => $sector,
                "active"     => 1,
                "created_at" => new \DateTime("now"),
                "updated_at" => new \DateTime("now"),
            ]);
        }
    }
}
