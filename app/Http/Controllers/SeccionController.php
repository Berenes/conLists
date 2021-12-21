<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Requests\SeccionRequest;
use App\Models\Seccion;
use App\Models\Unidad;
use App\Models\Pueblo;
use Auth;

class SeccionController extends Controller
{
    public function getAll()
    {
    	return view('secciones.list')->with('secciones' , Seccion::with('pueblos')->paginate(10)->setPath('all'));
    }

    /*
    * display register form
    */
    public function getRegister()
    {
        $seccion= Seccion::get();
        $unidad= Unidad::get();
        return view("secciones.register")->with(array(
            'seccion'=> $seccion,
            'unidad' =>$unidad,
            ));
    }

     public function postRegister(SeccionRequest $seccionRequest)
    {
        $title = \Request::input('title');

        $unidad_id= \Request::input('unity');

        //dd($seccion);

        $seccion = new Seccion(array(            
            'unidad_id' => $unidad_id,
            'title' => $title
            ));

        $seccion->save();
        
            \Session::flash('section_created', \Lang::get("messages.section_created", array(
                    'title' => $title
                )));

        return redirect()->back();
        
    }


     public function getEdit($id)
    {
        $seccion = Seccion::find($id);
        if($seccion)
        {
            return view("secciones.edit", compact("seccion"));
        }
        return redirect()->intended('secciones/all');
    }


    public function postEdit($id)
    {
        $seccion_unidad = \Request::input('unidad');
        //dd($seccion_unidad);
        $unidades = Unidad::select('id')->where('title','=', $seccion_unidad )->get();

        $seccion = Seccion::find($id);

        foreach ($unidades as $unidad) {
            $seccion->unidad_id = $unidad->id;
        }
        
        $seccion->title = \Request::input('title');


        $seccion->save();
        \Session::flash('section_updated', \Lang::get("messages.section_updated", array(
                    'title' => $seccion->title
                )));
        return redirect()->intended('secciones/all');
    } 


     public function getPueblos($id)    
    {
        $seccion = Seccion::find($id);
        \Session::flash('towns_for_section', 'Pueblos de la Sección <b>"'.$seccion->title.'"</b>');
        return view('secciones.pueblos')->with(array(
                    'pueblos'=>$seccion->pueblos
            ));
        
    }


    public function deleteDestroy($id)
    {
        $seccion = Seccion::find($id);
        if($seccion)
        {
            $seccion->delete();
            \Session::flash('section_deleted', \Lang::get("messages.section_deleted", array(
                    'title' => $seccion->title
                )));
        }
        return redirect()->intended('secciones/all');
    }


}
