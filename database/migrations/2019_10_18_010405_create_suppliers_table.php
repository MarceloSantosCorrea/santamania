<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSuppliersTable extends Migration
{
    private $permissions = [
        ['name' => 'list_suppliers', 'label' => 'Listar Fornecedores'],
        ['name' => 'create_suppliers', 'label' => 'Criar Fornecedor'],
        ['name' => 'edit_suppliers', 'label' => 'Editar Fornecedor'],
        ['name' => 'delete_suppliers', 'label' => 'Deletar Fornecedor'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('suppliers', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('name');
            $table->string('color');

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

        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('suppliers');
        Schema::enableForeignKeyConstraints();
    }
}
