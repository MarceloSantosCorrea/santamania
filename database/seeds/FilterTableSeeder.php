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
        foreach (
            [
                'Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado',
                'Domingo Feriado', 'Segunda-feira Feriado', 'Terça-feira Feriado', 'Quarta-feira Feriado',
                'Quinta-feira Feriado', 'Sexta-feira Feriado', 'Sábado Feriado',
            ] as $sector
        ) {
            DB::table('filters')->insert([
                "name"       => $sector,
                "uid"        => uniqid(),
                "active"     => 1,
                "default"    => 1,
                "created_at" => new \DateTime("now"),
                "updated_at" => new \DateTime("now"),
            ]);
        }
    }
}
