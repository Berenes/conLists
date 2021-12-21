<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\RegisterForm;
use App\Http\Requests\ProfileForm;
use App\Http\Requests;
use App\Models\Unidad;
use App\Models\Seccion;
use App\Models\Pueblo;
use App\Models\Usuario;
use Auth;

class UsuarioController extends Controller
{
    /*
    * retrieve and display all usuarios
    */
    public function getAll()
    {
    	$usuario = Usuario::paginate(2);
        return view("usuarios.list")->with(array('usuario' => $usuario));
    }

    public function getEdit($id)
    {
        $usuario = Usuario::find($id);
        if($usuario)
        {
            return view("usuarios.edit", compact("usuario"));
        }
        return redirect()->intended('usuarios/profile');
    }

    public function postEdit(RegisterForm $registerForm, $id)
    {
        $usuario                =  Usuario::find($id);
        $usuario->number        = \Request::input('number');
        $usuario->name          = \Request::input('name');
        $usuario->surnames      = \Request::input('surnames');
        $usuario->street        = \Request::input('street');
        $usuario->number_street = \Request::input('number_street');
        $usuario->observaciones = \Request::input('observaciones');
        $usuario->telephone     = \Request::input('telephone');
        $usuario->save();
        \Session::flash('neighbor_updated', \Lang::get("messages.neighbor_updated",
             array(
                    'name'     => $usuario->name,
                    'surnames' => $usuario->surnames
                    )));
        return redirect()->intended('pueblos/vecinos/'.$usuario->pueblo_id);
    }

    public function getSections(Request $request, $id){
        if($request->ajax()){
            $secciones = Seccion::where('unidad_id','=',$id)
            ->get();
            return response()->json($secciones);
        }
    }

    public function getPueblos(Request $request, $id){
        if($request->ajax()){
            $pueblos = Pueblo::where('seccion_id','=',$id)
            ->get();
            return response()->json($pueblos);
        }
    }

    /*
    * display register form
    */
    public function getRegister()
    {

        $unidad   = Unidad::get();
        $unidades = Unidad::lists('title','id');
        $seccion  = Seccion::get();
        $pueblo   = Pueblo::get();
        $pueblos  = Pueblo::lists('title','id');
        return view("usuarios.register")->with(array(
            'unidad'   => $unidad,
            'unidades' => $unidades,
            'seccion'  => $seccion,
            'pueblo'   => $pueblo,
            'pueblos'  => $pueblos,
            ));
    }

    public function postRegister(ProfileForm $profileForm)
    {

        $unidad_id  = \Request::input('unity');
        $seccion_id = \Request::input('section');
        $pueblo_id  = \Request::input('town');
        $pueblo     = Pueblo::find($pueblo_id);
        //dd($pueblo_id);


            return view("usuarios.registrar")->with(array(
                'unidad_id'  => $unidad_id,
                'seccion_id' => $seccion_id,
                'pueblo_id'  => $pueblo_id,
                'pueblo'     => $pueblo
            ));
    }

    public function getRegistrar()
    {

        $unidad_id  = \Request::input('unity');
        $seccion_id = \Request::input('section');
        $pueblo_id  = \Request::input('town');
        $pueblo     = Pueblo::find($pueblo_id);


            return view("usuarios.registrar")->with(array(
                'unidad_id'  => $unidad_id,
                'seccion_id' => $seccion_id,
                'pueblo_id'  => $pueblo_id,
                'pueblo'     => $pueblo
            ));
    }

    public function postRegistrar(RegisterForm $registerForm)
    {

        $unidad_id     = \Request::input('unidad_id');
        $seccion_id    = \Request::input('seccion_id');
        $pueblo_id     = \Request::input('pueblo_id');
        $number        = \Request::input('number');
        $name          = \Request::input('name');
        $surnames      = \Request::input('surnames');
        $street        = \Request::input('street');
        $number_street = \Request::input('number_street');
        $observaciones = \Request::input('observaciones');
        $telephone     = \Request::input('telephone');

        $pueblo = Pueblo::find($pueblo_id);

        $usuario = new Usuario(array(
            'unidad_id'     => $unidad_id,
            'seccion_id'    => $seccion_id,
            'pueblo_id'     => $pueblo_id,
            'number'        => $number,
            'name'          => $name,
            'surnames'      => $surnames,
            'street'        => $street,
            'number_street' => $number_street,
            'observaciones' => $observaciones,
            'telefono'      => $telephone));

        $usuario->save();

            \Session::flash('neighbor_created', \Lang::get("messages.neighbor_created",
                array(
                    'number'   => $number,
                    'name'     => $name,
                    'surnames' => $surnames,
                    'pueblo'   => $pueblo->title
                    )));

            return view("usuarios.registrar")->with(array(
                'unidad_id'  => $unidad_id,
                'seccion_id' => $seccion_id,
                'pueblo_id'  => $pueblo_id,
                'pueblo'     => $pueblo,
                'name'       => $name,
                'surnames'   => $surnames
            ));


    }


    public function getVecsearch()
    {
        return view("usuarios.buscar_vecino");
    }
    public function postVecsearch()
    {
        $surnames = \Request::input('surnames');


        if(isset($surnames)){
            $usuarios = Usuario::where('surnames', 'LIKE', '%' . $surnames . '%')->paginate(30);
             \Session::flash('neighbors_found', \Lang::get("messages.neighbors_found"));
                return view("usuarios.neighbors_found")->with(array(
                                    'usuarios' => $usuarios
                                ));
        }
        else
        {
         \Session::flash('no_neighbors_found', \Lang::get("messages.no_neighbors_found"));
            return view("usuarios.neighbors_found");
        }
    }

    public function deleteDestroy($id)
    {
        $user     = Usuario::find($id);
        $name     = $user->name;
        $surnames = $user->surnames;
        if($user)
        {
            $user->delete();
            if( ! Auth::user() )
            {
                return redirect('users/login');
            }
            \Session::flash('neighbor_deleted', \Lang::get("messages.neighbor_deleted",
                array(
                    "name"     => $name,
                    "surnames" => $surnames
                    )));
        }
        return redirect()->back();
    }

}
