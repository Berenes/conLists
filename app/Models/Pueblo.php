<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pueblo extends Model
{
     /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'pueblos';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['title', 'seccion_id', 'unidad_id'];

    public function unidad()
    {
        return $this->belongsTo('\App\Models\Unidad');
    }

    public function seccion()
    {
        return $this->belongsTo('\App\Models\Seccion');
    }

    public function usuarios()
    {
    	return $this->hasMany('\App\Models\Usuario');
    }

    public function users_number($number)
    {
        return $this->usuarios->where('number', $number);
    }
}
