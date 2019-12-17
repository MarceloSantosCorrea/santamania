<?php

use Illuminate\Database\Seeder;

class ProductCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach (['Categoria 01', 'Categoria 02', 'Categoria 03', 'Categoria 04', 'Categoria 05'] as $category) {
            DB::table('product_categories')->insert([
                "name"       => $category,
                "active"     => 1,
                "created_at" => new \DateTime("now"),
                "updated_at" => new \DateTime("now"),
            ]);
        }
    }
}
