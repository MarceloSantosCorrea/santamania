<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    private $permissions = [
        ['name' => 'home', 'label' => 'Home'],
        ['name' => 'list_users', 'label' => 'Listar Usuários'],
        ['name' => 'create_users', 'label' => 'Criar Usuários'],
        ['name' => 'edit_users', 'label' => 'Editar Usuários'],
        ['name' => 'show_users', 'label' => 'Visualizar Usuários'],
        ['name' => 'delete_users', 'label' => 'Deletar Usuários'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('firstname');
            $table->string('lastname');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password');
            $table->integer('active')->unsigned()->default(1);
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
