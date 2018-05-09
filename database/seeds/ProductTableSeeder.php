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

//        $products = [
//            'Alho e Óleo',
//            'Atum',
//            'Azeitona',
//            'Bacon',
//            'Bahianinha',
//            'Bolonha',
//            'Coração de Frango',
//            'Frango',
//            'Carne em cubo',
//            'Lombo',
//            'Abacaxi',
//            'Milho',
//            'Mussarela 350g',
//            'Mussarela 150g',
//            'Mussarela 100g',
//            'Palmito',
//            'Provolone',
//            'Strogonoff',
//            'Filé',
//            'Filé Conhaque',
//        ];

        $products = [
            'Strogonoff',
            'Frango',
            'Lombo',
        ];

        foreach ($products as $product) {
            DB::table('products')->insert([
                'name'                => $product,
                'product_category_id' => rand(1, 2),
                'units_measure_id'    => rand(1, 2),
                'active'              => 1,
                "created_at"          => new \DateTime("now"),
                "updated_at"          => new \DateTime("now"),
            ]);
        }


//        factory(App\Models\Product::class, 30)->create();
    }
}
