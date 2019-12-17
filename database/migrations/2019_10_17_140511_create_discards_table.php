<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDiscardsTable extends Migration
{
    private $permissions = [
        ['name' => 'list_discards', 'label' => 'Listar Descartes'],
        ['name' => 'create_discards', 'label' => 'Criar Descarte'],
        ['name' => 'edit_discards', 'label' => 'Editar Discarte'],
        ['name' => 'delete_discards', 'label' => 'Deletar Descarte'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('discards', function (Blueprint $table) {
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

        Schema::dropIfExists('discards');
    }
}
