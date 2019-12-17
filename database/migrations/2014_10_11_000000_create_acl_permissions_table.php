<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAclPermissionsTable extends Migration
{
    private $permissions = [
        ['name' => 'list_acl_roles', 'label' => 'Listar Perfis'],
        ['name' => 'create_acl_roles', 'label' => 'Criar Perfis'],
        ['name' => 'edit_acl_roles', 'label' => 'Editar Perfis'],
        ['name' => 'show_acl_roles', 'label' => 'Visualizar Perfis'],
        ['name' => 'delete_acl_roles', 'label' => 'Deletar Perfis'],

        ['name' => 'list_acl_permissions', 'label' => 'Listar Permissões'],
        ['name' => 'create_acl_permissions', 'label' => 'Criar Permissões'],
        ['name' => 'edit_acl_permissions', 'label' => 'Editar Permissões'],
        ['name' => 'show_acl_permissions', 'label' => 'Visualizar Permissões'],
        ['name' => 'delete_acl_permissions', 'label' => 'Deletar Permissões'],
    ];

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('acl_permissions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name', 50);
            $table->string('label', 200);
            $table->timestamps();
        });

        Schema::create('acl_permission_acl_role', function (Blueprint $table) {
            $table->unsignedBigInteger('acl_permission_id');
            $table->foreign('acl_permission_id')->references('id')->on('acl_permissions')->onDelete('cascade');

            $table->unsignedBigInteger('acl_role_id');
            $table->foreign('acl_role_id')->references('id')->on('acl_roles')->onDelete('cascade');
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
        Schema::dropIfExists('acl_permission_acl_role');
        Schema::dropIfExists('acl_permissions');
    }
}
