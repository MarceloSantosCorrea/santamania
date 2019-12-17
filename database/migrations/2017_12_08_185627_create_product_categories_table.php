<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductCategoriesTable extends Migration
{
    private $permissions = [
        ['name' => 'list_product_categories', 'label' => 'Listar Categoria de Produtos'],
        ['name' => 'create_product_categories', 'label' => 'Criar Categoria de Produtos'],
        ['name' => 'edit_product_categories', 'label' => 'Editar Categoria de Produtos'],
        ['name' => 'show_product_categories', 'label' => 'Visualizar Categoria de Produtos'],
        ['name' => 'delete_product_categories', 'label' => 'Deletar Categoria de Produtos'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_categories', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('name');
            $table->integer('active')->unsigned();

            $table->timestamps();
        });

        foreach ($this->permissions as $permission) {
            DB::table('acl_permissions')->insert([
                'name'       => $permission['name'],
                'label'      => $permission['label'],
                "created_at" => new \DateTime("now"),
                "updated_at" => new \DateTime("now"),
            ]);
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        foreach ($this->permissions as $permission) {
            DB::table('acl_permissions')->where([
                'name'  => $permission['name'],
                'label' => $permission['label'],
            ])->delete();
        }
        Schema::dropIfExists('product_categories');
    }
}
