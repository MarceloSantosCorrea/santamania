<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = [
            [
                'name'                => 'Produto 01',
                'product_category_id' => 1,
                'units_measure_id'    => 1,
            ],
            [
                'name'                => 'Produto 02',
                'product_category_id' => 2,
                'units_measure_id'    => 1,
            ],
            [
                'name'                => 'Produto 03',
                'product_category_id' => 3,
                'units_measure_id'    => 1,
            ],
        ];

        foreach ($products as $product) {
            DB::table('products')->insert([
                'name'                => $product['name'],
                'product_category_id' => $product['product_category_id'],
                'units_measure_id'    => $product['units_measure_id'],
                'active'              => 1,
                "created_at"          => new \DateTime("now"),
                "updated_at"          => new \DateTime("now"),
            ]);
        }
    }
}
