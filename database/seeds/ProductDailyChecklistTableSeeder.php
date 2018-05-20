<?php

use App\Models\ProductDailyChecklist;
use Illuminate\Database\Seeder;

class ProductDailyChecklistTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = \App\Models\Product::all();

        if ($products) {

            $days = [
                0,
                0,
                0,
            ];

            foreach ($products as $product) {
                DB::table('product_daily_checklist')->insert([
                    'product_id' => $product->id,
                    'days'       => json_encode($days),
                    'created_at' => new \DateTime('NOW'),
                    'updated_at' => new \DateTime('NOW'),
                ]);
            }
        }
    }
}
