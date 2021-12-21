<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Seccion extends Model
{
     /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'secciones';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['unidad_id', 'title'];
/**/
    public function unidad()
    {
        return $this->belongsTo('\App\Models\Unidad');
    }

    public function pueblos()
    {
        return $this->hasMany('\App\Models\Pueblo');
    }


}
