<?php

use Illuminate\Database\Seeder;

class AclPermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [
            // Home
            [
                'name'  => 'home',
                'label' => 'Home',
            ],
            // Usuários
            [
                'name'  => 'list_users',
                'label' => 'Listar Usuários',
            ],
            [
                'name'  => 'create_users',
                'label' => 'Criar Usuários',
            ],
            [
                'name'  => 'edit_users',
                'label' => 'Editar Usuários',
            ],
            [
                'name'  => 'show_users',
                'label' => 'Visualizar Usuários',
            ],
            [
                'name'  => 'delete_users',
                'label' => 'Deletar Usuários',
            ],
            // Categorias de Produtos
            [
                'name'  => 'list_product_categories',
                'label' => 'Listar Categoria de Produtos',
            ],
            [
                'name'  => 'create_product_categories',
                'label' => 'Criar Categoria de Produtos',
            ],
            [
                'name'  => 'edit_product_categories',
                'label' => 'Editar Categoria de Produtos',
            ],
            [
                'name'  => 'show_product_categories',
                'label' => 'Visualizar Categoria de Produtos',
            ],
            [
                'name'  => 'delete_product_categories',
                'label' => 'Deletar Categoria de Produtos',
            ],
            // Warehouses
            [
                'name'  => 'list_warehouses',
                'label' => 'Listar Locais de Armazenamento',
            ],
            [
                'name'  => 'create_warehouses',
                'label' => 'Criar Locais de Armazenamento',
            ],
            [
                'name'  => 'edit_warehouses',
                'label' => 'Editar Locais de Armazenamento',
            ],
            [
                'name'  => 'show_warehouses',
                'label' => 'Visualizar Locais de Armazenamento',
            ],
            [
                'name'  => 'delete_warehouses',
                'label' => 'Deletar Locais de Armazenamento',
            ],
            // Units Measure
            [
                'name'  => 'list_units_measures',
                'label' => 'Listar Unidades de Medida',
            ],
            [
                'name'  => 'create_units_measures',
                'label' => 'Criar Unidades de Medida',
            ],
            [
                'name'  => 'edit_units_measures',
                'label' => 'Editar Unidades de Medida',
            ],
            [
                'name'  => 'show_units_measures',
                'label' => 'Visualizar Unidades de Medida',
            ],
            [
                'name'  => 'delete_units_measures',
                'label' => 'Deletar Unidades de Medida',
            ],
            // Products
            [
                'name'  => 'list_products',
                'label' => 'Listar Produtos',
            ],
            [
                'name'  => 'create_products',
                'label' => 'Criar Produtos',
            ],
            [
                'name'  => 'edit_products',
                'label' => 'Editar Produtos',
            ],
            [
                'name'  => 'show_products',
                'label' => 'Visualizar Produtos',
            ],
            [
                'name'  => 'delete_products',
                'label' => 'Deletar Produtos',
            ],
            // Productions
            [
                'name'  => 'list_productions',
                'label' => 'Listar Produção',
            ],
            [
                'name'  => 'create_productions',
                'label' => 'Criar Produção',
            ],
            [
                'name'  => 'edit_productions',
                'label' => 'Editar Produção',
            ],
            [
                'name'  => 'show_productions',
                'label' => 'Visualizar Produção',
            ],
            [
                'name'  => 'delete_productions',
                'label' => 'Deletar Produção',
            ],
            // Checklist
            [
                'name'  => 'list_checklists',
                'label' => 'Listar Checklists',
            ],
            [
                'name'  => 'create_checklists',
                'label' => 'Criar Checklists',
            ],
            [
                'name'  => 'edit_checklists',
                'label' => 'Editar Checklists',
            ],
            [
                'name'  => 'show_checklists',
                'label' => 'Visualizar Checklists',
            ],
            [
                'name'  => 'close_checklists',
                'label' => 'Fechar Checklists',
            ],
            [
                'name'  => 'reopen_checklists',
                'label' => 'Reabrir Checklists',
            ],
            [
                'name'  => 'delete_checklists',
                'label' => 'Deletar Checklists',
            ],
            // Tasks
            [
                'name'  => 'list_tasks',
                'label' => 'Listar Tarefas',
            ],
            [
                'name'  => 'create_tasks',
                'label' => 'Criar Tarefas',
            ],
            [
                'name'  => 'edit_tasks',
                'label' => 'Editar Tarefas',
            ],
            [
                'name'  => 'show_tasks',
                'label' => 'Visualizar Tarefas',
            ],
            [
                'name'  => 'finalize_tasks',
                'label' => 'Finalizar Tarefas',
            ],
            [
                'name'  => 'delete_tasks',
                'label' => 'Deletar Tarefas',
            ],
            // Acl Roles
            [
                'name'  => 'list_acl_roles',
                'label' => 'Listar Perfis',
            ],
            [
                'name'  => 'create_acl_roles',
                'label' => 'Criar Perfis',
            ],
            [
                'name'  => 'edit_acl_roles',
                'label' => 'Editar Perfis',
            ],
            [
                'name'  => 'show_acl_roles',
                'label' => 'Visualizar Perfis',
            ],
            [
                'name'  => 'delete_acl_roles',
                'label' => 'Deletar Perfis',
            ],
            // Acl Permission
            [
                'name'  => 'list_acl_permissions',
                'label' => 'Listar Permissões',
            ],
            [
                'name'  => 'create_acl_permissions',
                'label' => 'Criar Permissões',
            ],
            [
                'name'  => 'edit_acl_permissions',
                'label' => 'Editar Permissões',
            ],
            [
                'name'  => 'show_acl_permissions',
                'label' => 'Visualizar Permissões',
            ],
            [
                'name'  => 'delete_acl_permissions',
                'label' => 'Deletar Permissões',
            ],
        ];

        foreach ($permissions as $permission) {
            DB::table('acl_permissions')->insert([
                'name'       => $permission['name'],
                'label'      => $permission['label'],
                "created_at" => new \DateTime("now"),
                "updated_at" => new \DateTime("now"),
            ]);
        }
    }
}
