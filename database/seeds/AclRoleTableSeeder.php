<?php

use Illuminate\Database\Seeder;

class AclRoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [
            [
                'name'  => 'admin',
                'label' => 'Administrador',
            ],
            [
                'name'  => 'gerente',
                'label' => 'Gerente de Produção',
            ],
            [
                'name'  => 'cozinheiro',
                'label' => 'Cozinheiro',
            ],
            [
                'name'  => 'pizzaiolo',
                'label' => 'Pizzaiolo',
            ],
        ];

        foreach ($roles as $role) {
            DB::table('acl_roles')->insert([
                'name'       => $role['name'],
                'label'      => $role['label'],
                "created_at" => new \DateTime("now"),
                "updated_at" => new \DateTime("now"),
            ]);
        }
    }
}
