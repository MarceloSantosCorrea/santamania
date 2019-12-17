<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTasksTable extends Migration
{
    private $permissions = [
        ['name' => 'list_tasks', 'label' => 'Listar Tarefas'],
        ['name' => 'create_tasks', 'label' => 'Criar Tarefas'],
        ['name' => 'edit_tasks', 'label' => 'Editar Tarefas'],
        ['name' => 'show_tasks', 'label' => 'Visualizar Tarefas'],
        ['name' => 'finalize_tasks', 'label' => 'Finalizar Tarefas'],
        ['name' => 'delete_tasks', 'label' => 'Deletar Tarefas'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tasks', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->unsignedBigInteger('product_id');
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');

            $table->longText('description')->nullable();
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

        Schema::dropIfExists('tasks');
    }
}
