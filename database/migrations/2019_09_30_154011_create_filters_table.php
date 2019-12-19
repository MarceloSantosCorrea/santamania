<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFiltersTable extends Migration
{
    private $permissions = [
        ['name' => 'list_filters', 'label' => 'Listar Filtros'],
        ['name' => 'create_filters', 'label' => 'Criar Filtros'],
        ['name' => 'edit_filters', 'label' => 'Editar Filtros'],
        ['name' => 'show_filters', 'label' => 'Visualizar Filtros'],
        ['name' => 'delete_filters', 'label' => 'Deletar Filtros'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('filters', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('uid');

            $table->string('name');
            $table->unsignedInteger('active');
            $table->integer('default')->default(0);

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
        Schema::dropIfExists('filters');
    }
}
