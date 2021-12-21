<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cuadro_de_clasificacion extends Model
{
     /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'cuadro_de_clasificaciones';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [ 'unidad_id', 'title', 'number_section', 'number_street', 'clave'];

    public function getNumSectionsAttribute()
    {
        return count($this->number_section);
    }
}
