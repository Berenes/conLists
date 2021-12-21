<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'usuarios';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['unidad_id','seccion_id', 'pueblo_id','number', 'name', 'surnames', 'street', 'number_street', 'observaciones', 'telephone'];


    public function unidad()
    {
        return $this->belongsTo('\App\Models\Unidad');
    }

    public function seccion()
    {
        return $this->belongsTo('\App\Models\Seccion');
    }

    public function pueblo()
    {
        return $this->belongsTo('\App\Models\Pueblo');
    }

    public function getFullNameAttribute()
    {
        return $this->name.' '.$this->surnames;
    }

    public function getFullStreetAttribute()
    {
        return $this->street.' '.$this->number_street;
    }

}
