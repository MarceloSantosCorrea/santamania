<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    private $permissions = [
        ['name' => 'list_products', 'label' => 'Listar Produtos'],
        ['name' => 'create_products', 'label' => 'Criar Produtos'],
        ['name' => 'edit_products', 'label' => 'Editar Produtos'],
        ['name' => 'show_products', 'label' => 'Visualizar Produtos'],
        ['name' => 'delete_products', 'label' => 'Deletar Produtos'],
        ['name' => 'update_product_days', 'label' => 'Alterar Produtos Diários'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('name');
            $table->integer('active')->unsigned();

            $table->unsignedBigInteger('product_category_id');
            $table->foreign('product_category_id')->references('id')->on('product_categories')->onDelete('cascade');

            $table->unsignedBigInteger('units_measure_id');
            $table->foreign('units_measure_id')->references('id')->on('units_measures')->onDelete('cascade');

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

        Schema::dropIfExists('products');
    }
}
