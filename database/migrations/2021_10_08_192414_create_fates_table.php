<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fates', function (Blueprint $table) {
            $table->id();
            $table->integer('fate_id');
            $table->integer('role'); # Chances, Loteria
            $table->integer('award');
            $table->integer('serie')->nullable()->default(0);
            $table->date('release');
            $table->date('validity');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('fates');
    }
}
