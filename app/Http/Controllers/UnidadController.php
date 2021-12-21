<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\UnidadRequest;
use App\Http\Requests;
use App\Models\Unidad;
use App\Models\Seccion;
use App\Models\Pueblo;
use Auth;

class UnidadController extends Controller
{
    public function getAll()
    {
    	return view('unidades.list')->with('unidades' , Unidad::with('secciones')->paginate(10)->setPath('all'));
    }

    /*
    * display register form
    */
    public function getRegister()
    {
        return view("unidades.register");
    }

     public function postRegister(UnidadRequest $unidadRequest)
    {
        $title = \Request::input('title');

        $unidad = new Unidad(array(
            'title' => $title));

        $unidad->save();
        
            \Session::flash('unidad_created', \Lang::get("messages.unidad_created", array(
                'title' => $title)));
        return redirect()->back();
        
    }


    public function getEdit($id)
    {
        $unidad = Unidad::find($id);
        if($unidad)
        {
            return view("unidades.edit", compact("unidad"));
        }
        return redirect()->intended('unidades/all');
    }


    public function postEdit($id)
    {
        $unidad = Unidad::find($id);        
        $unidad->title = \Request::input('title');
        $unidad->save();
        \Session::flash('unidad_updated', \Lang::get("messages.unidad_updated",array('title'=>$unidad->title)));
        return redirect()->intended('unidades/all');
    } 

    public function getSecciones($id)    
    {
        $unidad = Unidad::find($id);
        \Session::flash('sections_for_unity', 'Secciones de la Unidad <b>"'.$unidad->title.'"</b>');
        return view('unidades.secciones')->with(array(
                    'secciones'=>$unidad->secciones
            ));        
    }



    public function deleteDestroy($id)
    {
        $unidad = Unidad::find($id);

        if($unidad)
        {
            $unidad->delete();
            \Session::flash('unidad_deleted', \Lang::get("messages.unidad_deleted",
                array('title'=>$unidad->title)));
        }
        return redirect()->back();
    }


}
