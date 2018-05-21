<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'firstname'      => 'Admin',
            'lastname'       => 'Admin',
            'name'           => 'Admin Admin',
            'email'          => 'admin@admin.com',
            'password'       => bcrypt('admin'),
            'remember_token' => str_random(10),
            'active'         => 1,
            'created_at'     => new \DateTime('NOW'),
            'updated_at'     => new \DateTime('NOW'),
        ]);

        DB::table('users')->insert([
            'firstname'      => 'Marcelo',
            'lastname'       => 'Corrêa',
            'name'           => 'Marcelo Corrêa',
            'email'          => 'marcelocorrea229@gmail.com',
            'password'       => bcrypt('Marsc2014'),
            'remember_token' => str_random(10),
            'active'         => 1,
            'created_at'     => new \DateTime('NOW'),
            'updated_at'     => new \DateTime('NOW'),
        ]);
    }
}
