<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsuariosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usuarios', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->integer('unidad_id')->unsigned();
            $table->integer('seccion_id')->unsigned();
            $table->integer('pueblo_id')->unsigned();
            $table->integer('number')->unsigned()->nullable();
            $table->string('name', 200)->nullable();          
            $table->string('surnames', 200)->nullable();          
            $table->string('street', 200)->nullable();
            $table->integer('number_street')->unsigned()->nullable();           
            $table->decimal('telephone')->unsigned()->nullable();           
            $table->foreign('unidad_id')->references('id')->on('unidades')->onDelete('cascade');      
            $table->foreign('seccion_id')->references('id')->on('secciones')->onDelete('cascade');     
            $table->foreign('pueblo_id')->references('id')->on('pueblos')->onDelete('cascade');      
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
        Schema::drop('usuarios');
    }
}
