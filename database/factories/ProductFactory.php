<?php

use Faker\Generator as Faker;

$factory->define(\App\Models\Product::class, function (Faker $faker) {
    return [
        'name'                => $faker->company,
        'product_category_id' => rand(1, 2),
        'units_measure_id'    => rand(1, 2),
    ];
});
