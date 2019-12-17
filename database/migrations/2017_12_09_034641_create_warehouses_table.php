<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWarehousesTable extends Migration
{
    private $permissions = [
        ['name' => 'list_warehouses', 'label' => 'Listar Locais de Armazenamento'],
        ['name' => 'create_warehouses', 'label' => 'Criar Locais de Armazenamento'],
        ['name' => 'edit_warehouses', 'label' => 'Editar Locais de Armazenamento'],
        ['name' => 'show_warehouses', 'label' => 'Visualizar Locais de Armazenamento'],
        ['name' => 'delete_warehouses', 'label' => 'Deletar Locais de Armazenamento'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('warehouses', function (Blueprint $table) {
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

        Schema::dropIfExists('warehouses');
    }
}
