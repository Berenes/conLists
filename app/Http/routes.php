<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('users.login');
});



Route::get('/orm', function () {
    $user= new App\Models\User;
    $user->nombre ="David";
    $user->apellidos ="Sánchez Agüera";
    $user->email ="david@sanchez.es";
    $user->password =bcrypt('berenés');
    $user->save();
});
Route::get('upload', function() {
  return View::make('pages.upload');
});
Route::post('apply/upload', 'ApplyController@upload');
Route::get('/gmaps', ['as ' => 'gmaps', 'uses' => 'GmapsController@index']);

Route::group(array('middleware' => ['auth']), function($group)
{
    Route::controller('pueblos', 'PuebloController');
    Route::controller('secciones', 'SeccionController');
    Route::controller('unidades', 'UnidadController');
    Route::controller('dashboard', 'DashboardController');
    Route::controller('usuarios', 'UsuarioController');
    Route::controller('cuadro_de_clasificaciones', 'Cuadro_de_clasificacionController');
    Route::controller('users', 'UserController');
});
