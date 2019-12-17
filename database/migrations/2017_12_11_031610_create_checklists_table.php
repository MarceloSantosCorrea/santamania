<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChecklistsTable extends Migration
{
    private $permissions = [
        ['name' => 'list_checklists', 'label' => 'Listar Checklists'],
        ['name' => 'create_checklists', 'label' => 'Criar Checklists'],
        ['name' => 'edit_checklists', 'label' => 'Editar Checklists'],
        ['name' => 'show_checklists', 'label' => 'Visualizar Checklists'],
        ['name' => 'close_checklists', 'label' => 'Fechar Checklists'],
        ['name' => 'reopen_checklists', 'label' => 'Reabrir Checklists'],
        ['name' => 'delete_checklists', 'label' => 'Deletar Checklists'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('checklists', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->date('date');
            $table->integer('status')->default(1);

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

        Schema::dropIfExists('checklists');
    }
}
