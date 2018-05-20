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
        $categories = [
            'Molhos', 'Prontos', 'Diários Picados',
            'Industrializados', 'Frios/Fatiados',
        ];

        foreach ($categories as $category) {
            DB::table('product_categories')->insert([
                "name"       => $category,
                "active"     => 1,
                "created_at" => new \DateTime("now"),
                "updated_at" => new \DateTime("now"),
            ]);
        }
    }
}
