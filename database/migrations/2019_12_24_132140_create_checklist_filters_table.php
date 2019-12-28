<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChecklistFiltersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('checklist_filters', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->unsignedBigInteger('checklist_id');
            $table->foreign('checklist_id')->references('id')->on('checklists')->onDelete('cascade');

            $table->unsignedBigInteger('filter_id');
            $table->foreign('filter_id')->references('id')->on('filters')->onDelete('cascade');

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
        Schema::dropIfExists('checklist_filters');
    }
}
