<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAclPermissionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('acl_permissions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 50);
            $table->string('label', 200);
            $table->timestamps();
        });

        Schema::create('acl_permission_acl_role', function (Blueprint $table) {
            $table->integer('acl_permission_id')->unsigned();
            $table->foreign('acl_permission_id')->references('id')->on('acl_permissions')->onDelete('cascade');

            $table->integer('acl_role_id')->unsigned();
            $table->foreign('acl_role_id')->references('id')->on('acl_roles')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('acl_permission_acl_role');
        Schema::dropIfExists('acl_permissions');
    }
}
