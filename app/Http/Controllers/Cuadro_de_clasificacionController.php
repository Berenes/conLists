<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Requests\ClasificacionRequest;
use App\Models\Cuadro_de_clasificacion;
use App\Models\Unidad;
use Auth;
use Validator;
use Illuminate\Support\Facades\Input;

class Cuadro_de_clasificacionController extends Controller
{
    /*
    * retrieve and display all usuarios
    */
    public function getAll($id)
    {
        $unidad = Unidad::find($id);
        $cuadro_de_clasificaciones = Cuadro_de_clasificacion::where('unidad_id','=',$id)->orderBy('number_section')->paginate(300);

        return view("cuadro_de_clasificaciones.list")->with(array(
            'unidad'                    => $unidad,
            'cuadro_de_clasificaciones' => $cuadro_de_clasificaciones));
    } /*
    * retrieve and display all usuarios
    */
    public function getImprimir($id)
    {
        $unidad = Unidad::find($id);
        $cuadro_de_clasificaciones = Cuadro_de_clasificacion::where('unidad_id','=',$id)->orderBy('number_section')->paginate(300);

        $secciones= \DB::table('cuadro_de_clasificaciones')->where('unidad_id',$id)->groupBy('number_section')->count();
        //dd($secciones);
        return view("cuadro_de_clasificaciones.imprimir")->with(array(
            'unidad'                    => $unidad,
            'cuadro_de_clasificaciones' => $cuadro_de_clasificaciones));
    }

    public function getOrdenalfa($id)
    {
        $unidad = Unidad::find($id);
        $cuadro_de_clasificaciones = Cuadro_de_clasificacion::where('unidad_id','=',$id)->paginate(300);

        return view("cuadro_de_clasificaciones.orden")->with(array(
            'unidad'                    => $unidad,
            'cuadro_de_clasificaciones' => $cuadro_de_clasificaciones));
    }




    public function getRegister()
    {
        $unidad= Unidad::get();
        return view("cuadro_de_clasificaciones.register")->with(array(

            'unidad' =>$unidad,
            ));
    }

    public function postRegister()
    {

        $unidad_id  = \Request::input('unity');
        $unidad = Unidad::find($unidad_id);

            return view("cuadro_de_clasificaciones.registrar")->with(array(
                'unidad_id'  => $unidad_id,
                'unidad'  =>$unidad
            ));
    }


    public function getRegistrar()
    {
        $unidad_id  = \Request::input('unity');
        $unidad = Unidad::find($unidad_id);


            return view("cuadro_de_clasificaciones.registrar")->with(array(
                'unidad_id'  => $unidad_id,
                'unidad'  =>$unidad
            ));
    }

    public function postRegistrar()
    {

        $unidad_id     = \Request::input('unidad_id');
        $title     = \Request::input('title');
        $number_section     = \Request::input('number_section');
        $number_street     = \Request::input('number_street');
        $clave     = \Request::input('clave');
        $unidad = Unidad::find($unidad_id);


        $nueva_clasisficacion = new Cuadro_de_clasificacion(array(
			'unidad_id'      => $unidad_id,
			'title'          => $title,
			'number_section' => $number_section,
            'number_street'  => $number_street,
			'clave'          => $clave
            ));

        $nueva_clasisficacion->save();

            \Session::flash('clasificacion_created', \Lang::get("messages.clasificacion_created",
                array(
					'title'          => $title,
					'number_section' => $number_section,
					'number_street'  => $number_street,
                    'unidad'         => $unidad->title
                    )));

            return view("cuadro_de_clasificaciones.registrar")->with(array(
				'unidad_id'      => $unidad_id,
				'unidad'         => $unidad,
				'title'          => $title,
				'number_section' => $number_section,
				'number_street'  => $number_street
            ));
    }

    public function getEdit($id)
    {
        $cuadro_de_clasificacion = Cuadro_de_clasificacion::find($id);
        $unidad = Unidad::find($cuadro_de_clasificacion->unidad_id);
        if($cuadro_de_clasificacion)
        {
            return view("cuadro_de_clasificaciones.edit", compact(
                "cuadro_de_clasificacion",
                "unidad"));
        }
    }

    public function postEdit($id)
    {
        $cuadro_de_clasificacion                 = Cuadro_de_clasificacion::find($id);
        $cuadro_de_clasificacion->title          = \Request::input('title');
        $cuadro_de_clasificacion->number_section = \Request::input('number_section');
        $cuadro_de_clasificacion->number_street  = \Request::input('number_street');
        $cuadro_de_clasificacion->clave          = \Request::input('clave');
        $cuadro_de_clasificacion->save();
        \Session::flash('clasisficacion_updated', \Lang::get("messages.clasisficacion_updated",
             array(
                    'calle'     => $cuadro_de_clasificacion->title,

                    )));
        return redirect()->intended('cuadro_de_clasificaciones/all/'.$cuadro_de_clasificacion->unidad_id);
    }

     public function deleteDestroy($id)
    {
        $cuadro_de_clasificacion     = Cuadro_de_clasificacion::find($id);

        if($cuadro_de_clasificacion)
        {
            $cuadro_de_clasificacion->delete();

            \Session::flash('clasisficacion_deleted', \Lang::get("messages.clasisficacion_deleted",
                array(
                    "cuadro_de_clasificacion"     => $cuadro_de_clasificacion
                    )));
        }
        return redirect()->back();
    }


    public function getSubiricono(){

        \Session::flash('upload_icono', \Lang::get("messages.upload_icono"));

        return view("cuadro_de_clasificaciones.subir");
    }

    public function postSubiricono(){

        // getting all of the post data
                $file = array('image' => Input::file('image'));
                $icono = Input::file('image')->getClientOriginalName();
                //dd($name_file);
                // setting up rules
                $rules = array(
                'image' => 'required | mimes:svg, jpeg,jpg, SVG, JPG, JPEG, bmp, PNG, png | max:10000'); //mimes:jpeg,bmp,png and for max size max:10000
                // doing the validation, passing post data, rules and the messages
                $validator = Validator::make($file, $rules);
                if ($validator->fails()) {
                    // send back to the page with the input data and errors
                    return redirect()->back()->withInput()->withErrors($validator);
                }
                else {
                // checking file is valid.
                    if (Input::file('image')->isValid()) {
                        $destinationPath = 'uploads/iconos'; // upload pathgetting image extension
                        $fileName = 'icono-'.$icono; // renameing image
                        Input::file('image')->move($destinationPath, $fileName); // uploading file to given path
                        // sending back with message
                     \Session::flash('icono_upload', \Lang::get("messages.icono_upload", array('icono' => $icono)));
                    return redirect()->back();
                    }
                    else {
                        // sending back with error message.
                    \Session::flash('error', 'uploaded file is not valid');
                    return redirect()->back();
                    }
                }

    }

}
