<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSeccionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('secciones', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->integer('unidad_id')->unsigned();
            $table->string('title', 200)->unique();           
            $table->foreign('unidad_id')->references('id')->on('unidades')->onDelete('cascade');      
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
        Schema::drop('secciones');
    }
}
