<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCuadroDeClasificacionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cuadro_de_clasificaciones', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->integer('unidad_id')->unsigned();
            
            $table->string('title', 200);
            $table->integer('number_section')->unsigned()->nullable();       
            $table->string('number_street',20)->nullable();

            $table->foreign('unidad_id')->references('id')->on('unidades');         
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
        Schema::drop('cuadro_de_clasificaciones');
    }
}
