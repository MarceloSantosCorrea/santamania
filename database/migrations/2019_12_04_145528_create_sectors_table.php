<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSectorsTable extends Migration
{
    private $permissions = [
        ['name' => 'list_sectors', 'label' => 'Listar Setores'],
        ['name' => 'create_sectors', 'label' => 'Criar Setores'],
        ['name' => 'edit_sectors', 'label' => 'Editar Setores'],
        ['name' => 'delete_sectors', 'label' => 'Deletar Setores'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sectors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('uid');

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
        Schema::dropIfExists('sectors');
    }
}
