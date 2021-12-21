<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Requests\PuebloRequest;
use App\Models\Pueblo;
use App\Models\Seccion;
use App\Models\Unidad;
use App\Models\Usuario;
use Illuminate\Support\Facades\DB;
use Auth;
use Validator;

use Illuminate\Support\Facades\Input;

class PuebloController extends Controller
{

    public function store(Request $request){
         $request->validate([
            'seccion_id' => 'required|integer',
    ]);

    // The blog post is valid, store in database...
    }
    public function getUnitys(Request $request){
        if($request->ajax()){
            $unidades = Usuario::get();
            return response()->json($unidades);
        }
    }

    public function getSections(Request $request, $id){
        if($request->ajax()){
            $secciones = Seccion::where('unidad_id','=',$id)->orderBy('title','asc')
            ->get();
            return response()->json($secciones);
        }
    }

    /*
    * display register form
    */
    public function getRegister()
    {
        $unidad   = Unidad::get();
        $unidades = Unidad::lists('title', 'id');
        $seccion  = Seccion::get();
        $pueblo   = Pueblo::get();
        return view("pueblos.register")->with(array(
            'unidad'   => $unidad,
            'unidades' => $unidades,
            'seccion'  => $seccion,
            'pueblo'   => $pueblo,
            ));
    }

     public function postRegister(PuebloRequest $puebloRequest)
    {
            $title       = \Request::input('title');
            $unidad_id   = \Request::input('unity');
            $seccion_id  = \Request::input('section');

            //dd($seccion_id);

            $pueblo      = new Pueblo(array(
            'unidad_id'  => $unidad_id,
            'seccion_id' => $seccion_id,
            'title'      => $title));

        $pueblo->save();

            \Session::flash('town_created', \Lang::get("messages.town_created", array(
                'title' => $title)));
        return redirect()->back();

    }


     public function getAll()
    {
        $unidad  = Unidad::get();
        $seccion = Seccion::get();

        return view("pueblos.list")->with(array(
                    'unidad'  => $unidad,
                    'seccion' => $seccion
                ));
    }

    public function postPueblosporseccion(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'unidad_id' => 'required|integer',
        ]);
        if ($validator->fails()) {
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }
        $seccion = \Request::input('section');
        $section = Seccion::find($seccion);

        $pueblos = Pueblo::where('seccion_id','=',$seccion)->orderBy('id')->paginate(20);

        if(!$pueblos->isEmpty())
        {
             \Session::flash('towns_found', \Lang::get("messages.towns_found"));
            return view("pueblos.pueblos_por_seccion")->with(array(
                    'pueblos' => $pueblos,
                    'section' => $section
                ));
        }
        else
        {
            \Session::flash('no_found_towns', \Lang::get("messages.no_found_towns"));
            return view("pueblos.pueblos_por_seccion")->with(array(
                    'section' => $section
                ));
        }
    }

    public function getVecinos($id)
    {
        $pueblo   = Pueblo::find($id);
        $usuarios = Usuario::where('pueblo_id','=',$pueblo->id)->orderBy('surnames')->paginate(30);

        \Session::flash('neighbors_for_town', 'Vecinos del pueblo <b>"'.$pueblo->title.'"</b>');
        return view('pueblos.vecinos')->with(array(
                        'pueblo'=>$pueblo,
                        'usuarios'=>$usuarios
                    ));
    }

    public function getImprimirvecinos($id)
    {
        $pueblo   = Pueblo::find($id);
        $usuarios = Usuario::where('pueblo_id','=',$pueblo->id)->orderBy('surnames')->paginate(1000);

        \Session::flash('neighbors_for_town', 'Vecinos del pueblo <b>"'.$pueblo->title.'"</b>');
        return view('pueblos.imprimir')
                ->with(array(
                        'pueblo'   => $pueblo,
                        'usuarios' => $usuarios
                    ));
    }

    public function getDevolverenvios($id)
    {
        $pueblo   = Pueblo::find($id);
        $usuarios = Usuario::where('pueblo_id', $pueblo->id)
            ->where('observaciones','Devolver')
            ->orderBy('surnames')
            ->paginate(1000);

        \Session::flash('neighbors_for_town', 'Vecinos del pueblo <b>"'.$pueblo->title.'"</b>');
        return view('pueblos.vecinos_devueltos')
                ->with(array(
                        'pueblo'   => $pueblo,
                        'usuarios' => $usuarios
                    ));
    }
    public function getOrdenembarrie($id)
    {
        $pueblo       = Pueblo::find($id);

        $usuarios = Usuario::where('pueblo_id','=',$pueblo->id)
            ->orderBy('number')
            ->get();
        $ultimo_usuario= $usuarios->last();
        $ultimo = $ultimo_usuario->number;
        //dd($ultimo);


        \Session::flash('neighbors_for_town', 'Vecinos del pueblo <b>"'.$pueblo->title.'"</b>');
        return view('pueblos.orden')
                ->with(array(
                        'pueblo'      => $pueblo,
                        'usuarios'    => $usuarios,
                        'ultimo'      => $ultimo
                    ));
    }


     public function getEdit($id)
    {
        $pueblo  = Pueblo::find($id);
        $seccion = Seccion::find($pueblo->seccion_id);
        if($pueblo)
        {
            return view("pueblos.edit", compact("pueblo","seccion"));
        }
        return redirect()->intended('pueblos/all');
    }


    public function postEdit($id)
    {
        $nombre_unidad  = \Request::input('unidad');
        $unidades       = Unidad::select('id')->where('title','=', $nombre_unidad )->get();

        //

        $nombre_seccion = \Request::input('section');
        $secciones      = Seccion::select('id')->where('title','=', $nombre_seccion )->get();
        //

        $pueblo         = Pueblo::find($id);

        foreach ($unidades as $unidad) {
            $pueblo->unidad_id = $unidad->id;
            //dd($pueblo->unidad_id);
        }

        foreach ($secciones as $seccion) {
            $pueblo->seccion_id = $seccion->id;
        }

        $pueblo->title = \Request::input('title');
        $pueblo->save();
        \Session::flash('town_updated', \Lang::get("messages.town_updated", array('title' => $pueblo->title)));
        return redirect()->intended('secciones/pueblos/'.$pueblo->seccion_id);
    }

    public function getSubir($id){

        $pueblo  = Pueblo::find($id);
        \Session::flash('upload_map', \Lang::get("messages.upload_map", array('pueblo' => $pueblo->title)));

        return view("pueblos.subir", compact("pueblo"));
    }

    public function postSubir($id){

        $pueblo  = \Request::input('town');

        //dd($pueblo);

        // getting all of the post data
                $file = array('image' => Input::file('image'));

                // setting up rules
                $rules = array(
                'image' => 'required | mimes:jpeg,jpg,png,JPG,JPEG,bmp,PNG | max:10000'); //mimes:jpeg,bmp,png and for max size max:10000
                // doing the validation, passing post data, rules and the messages
                $validator = Validator::make($file, $rules);
                if ($validator->fails()) {
                    // send back to the page with the input data and errors
                    return redirect()->back()->withInput()->withErrors($validator);
                }
                else {
                // checking file is valid.
                    if (Input::file('image')->isValid()) {
                        $destinationPath = 'uploads'; // upload path
                        $extension = Input::file('image')->getClientOriginalExtension(); // getting image extension
                        $fileName = 'plano-'.$pueblo.'.'.$extension; // renameing image
                        Input::file('image')->move($destinationPath, $fileName); // uploading file to given path
                        // sending back with message
                     \Session::flash('town_upload', \Lang::get("messages.town_upload", array('pueblo' => $pueblo)));
                    return redirect()->back();
                    }
                    else {
                        // sending back with error message.
                    \Session::flash('error', 'uploaded file is not valid');
                    return redirect()->back();
                    }
                }

    }

    public function getMostrar($id){
        $pueblo= Pueblo::find($id);
        $nombre_fichero = 'uploads/plano-'.$pueblo->title.'.jpg';
        //dd($pueblo->title);
        \Session::flash('show_map', \Lang::get("messages.show_map", array('pueblo' => $pueblo->title)));
        return view("pueblos.mostrar", compact("pueblo" , "nombre_fichero"));
    }

    public function deleteDestroy($id)
    {
        $pueblo = Pueblo::find($id);
        if($pueblo)
        {
            $pueblo->delete();
            \Session::flash('town_deleted', \Lang::get("messages.town_deleted", array('title' => $pueblo->title)));
        }
        return redirect()->back();
    }


}
