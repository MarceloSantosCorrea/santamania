<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChecklistTotalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('checklist_totals', function (Blueprint $table) {
            $table->increments('id');

            $table->unsignedInteger('checklist_id');
            $table->foreign('checklist_id')->references('id')->on('checklists')->onDelete('cascade');

            $table->unsignedInteger('checklist_product_id');
            $table->foreign('checklist_product_id')->references('id')->on('checklist_products')->onDelete('cascade');

            $table->unsignedInteger('total');
            $table->unsignedInteger('difference');

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
        Schema::dropIfExists('checklist_totals');
    }
}
