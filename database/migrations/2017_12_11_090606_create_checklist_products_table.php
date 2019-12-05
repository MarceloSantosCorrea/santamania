<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChecklistProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('checklist_products', function (Blueprint $table) {
            $table->increments('id');

            $table->unsignedInteger('checklist_id');
            $table->foreign('checklist_id')->references('id')->on('checklists')->onDelete('cascade');

            $table->unsignedInteger('product_id');
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');

            $table->unsignedDecimal('total', 9, 1)->nullable(true);

            $table->longText('quantities')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('checklist_products');
    }
}
