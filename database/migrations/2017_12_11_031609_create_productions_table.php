<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductionsTable extends Migration
{
    private $permissions = [
        ['name'  => 'list_productions', 'label' => 'Listar Produção'],
        ['name'  => 'create_productions', 'label' => 'Criar Produção'],
        ['name'  => 'edit_productions', 'label' => 'Editar Produção'],
        ['name'  => 'show_productions', 'label' => 'Visualizar Produção'],
        ['name'  => 'delete_productions', 'label' => 'Deletar Produção'],
    ];
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productions', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->date('date');
            $table->unsignedDecimal('quantity', 9, 3);

            $table->unsignedBigInteger('product_id');
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');

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

        Schema::dropIfExists('productions');
    }
}
