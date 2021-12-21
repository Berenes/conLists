<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Unidad extends Model
{
     /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'unidades';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['title'];

    public function secciones()
    {
    	return $this->hasMany('\App\Models\Seccion');
    }
}
