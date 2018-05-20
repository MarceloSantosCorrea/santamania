<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChecklistWarehouseQuantitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('checklist_warehouse_quantities', function (Blueprint $table) {
            $table->increments('id');

            $table->unsignedInteger('warehouse_id');
            $table->foreign('warehouse_id')->references('id')->on('warehouses')->onDelete('cascade');

            $table->unsignedInteger('checklist_product_id');
            $table->foreign('checklist_product_id')->references('id')->on('checklist_products')->onDelete('cascade');

            $table->unsignedDecimal('quantity', 9, 1);

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
        Schema::dropIfExists('checklist_warehouse_quantities');
    }
}
