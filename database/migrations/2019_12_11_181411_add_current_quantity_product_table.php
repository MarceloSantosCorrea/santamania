<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCurrentQuantityProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (! Schema::hasColumn('products', 'current_quantity')) {
            Schema::table('products', function (Blueprint $table) {
                $table->unsignedDecimal('current_quantity', 9, 3)->default(0)->after('name');
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        if (Schema::hasColumn('products', 'current_quantity')) {
            Schema::table('products', function (Blueprint $table) {
                $table->dropColumn('current_quantity');
            });
        }
    }
}
