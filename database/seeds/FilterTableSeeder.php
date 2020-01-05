<?php

use Illuminate\Database\Seeder;

class FilterTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $filters = [
            ["name" => 'Domingo', 'default' => 1],
            ["name" => 'Segunda-feira', 'default' => 1],
            ["name" => 'Terça-feira', 'default' => 1],
            ["name" => 'Quarta-feira', 'default' => 1],
            ["name" => 'Quinta-feira', 'default' => 1],
            ["name" => 'Sexta-feira', 'default' => 1],
            ["name" => 'Sábado', 'default' => 1],
            ["name" => 'Domingo Feriado', 'default' => 0],
            ["name" => 'Segunda-feira Feriado', 'default' => 0],
            ["name" => 'Terça-feira Feriado', 'default' => 0],
            ["name" => 'Quarta-feira Feriado', 'default' => 0],
            ["name" => 'Quinta-feira Feriado', 'default' => 0],
            ["name" => 'Sexta-feira Feriado', 'default' => 0],
            ["name" => 'Sábado Feriado', 'default' => 0],
        ];

        foreach ($filters as $sector) {
            DB::table('filters')->insert([
                'name'       => $sector['name'],
                'uid'        => uniqid(),
                'active'     => 1,
                'default'    => $sector['default'],
                'created_at' => new \DateTime('now'),
                'updated_at' => new \DateTime('now'),
            ]);
        }
    }
}
