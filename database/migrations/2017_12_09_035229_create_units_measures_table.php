<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUnitsMeasuresTable extends Migration
{
    private $permissions = [
        ['name' => 'list_units_measures', 'label' => 'Listar Unidades de Medida'],
        ['name' => 'create_units_measures', 'label' => 'Criar Unidades de Medida'],
        ['name' => 'edit_units_measures', 'label' => 'Editar Unidades de Medida'],
        ['name' => 'show_units_measures', 'label' => 'Visualizar Unidades de Medida'],
        ['name' => 'delete_units_measures', 'label' => 'Deletar Unidades de Medida'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('units_measures', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('name');
            $table->string('symbol');

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

        Schema::dropIfExists('units_measures');
    }
}
