<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{

    /**
     * Categorias dos Produtos
     */
    const Molhos           = 1;
    const Prontos          = 2;
    const Industrializados = 3;
    const FriosFatiados    = 4;

    /**
     * Unidades de Medida
     */
    const Quilograma = 1;
    const Balde      = 2;
    const Unidade    = 3;

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
                'product_category_id' => self::Molhos,
                'units_measure_id'    => self::Balde,
            ],
//            [
//                'name'                => 'Coração',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Frango',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Molho de Tomate',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Molho Quatro Queijos',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Filé Frito',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Filé Molho de Cunhaque',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Gaúcha',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Carpaccio',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Alho e Óleo',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Carne Seca',
//                'product_category_id' => self::Molhos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Tomate Fatiado',
//                'product_category_id' => self::Prontos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Cebola Fatiada',
//                'product_category_id' => self::Prontos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Pimentão Fatiado',
//                'product_category_id' => self::Prontos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Cereja',
//                'product_category_id' => self::Prontos,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Calabresa',
//                'product_category_id' => self::Industrializados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Pepperone',
//                'product_category_id' => self::Industrializados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Parmesão',
//                'product_category_id' => self::Industrializados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Palmito',
//                'product_category_id' => self::Industrializados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Azeitonas',
//                'product_category_id' => self::Industrializados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Atum',
//                'product_category_id' => self::Industrializados,
//                'units_measure_id'    => self::Unidade,
//            ],
//            [
//                'name'                => 'Milho',
//                'product_category_id' => self::Industrializados,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Champignon',
//                'product_category_id' => self::Industrializados,
//                'units_measure_id'    => self::Balde,
//            ],
//            [
//                'name'                => 'Bacon',
//                'product_category_id' => self::FriosFatiados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Presunto',
//                'product_category_id' => self::FriosFatiados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Lombo',
//                'product_category_id' => self::FriosFatiados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Bahianinha',
//                'product_category_id' => self::FriosFatiados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Provolone',
//                'product_category_id' => self::FriosFatiados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Bolonha',
//                'product_category_id' => self::FriosFatiados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Chester',
//                'product_category_id' => self::FriosFatiados,
//                'units_measure_id'    => self::Quilograma,
//            ],
//            [
//                'name'                => 'Califórnia',
//                'product_category_id' => self::FriosFatiados,
//                'units_measure_id'    => self::Quilograma,
//            ],
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
