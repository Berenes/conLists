<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\LoginForm;
use App\Http\Requests\RegisterForm;
use App\Http\Requests\ProfileForm;
use Auth;
use App\Models\User;

class UserController extends Controller
{

    

    public function getEdit($id)
    {
        $user = User::find($id);
        if($user)
        {
            return view("users.edit", compact("user"));
        }
        return redirect()->intended('users/profile');
    }

    public function postEdit(ProfileForm $profileForm, $id)
    {
        $user = User::find($id);
        $user->email = \Request::input('email');
        $user->name = \Request::input('name');
        $user->save();
        \Session::flash('user_updated', \Lang::get("messages.user_updated"));
        return redirect()->back();
    }

    /*
    * display login form
    */
    public function getLogin()
    {
        return view("users.login");
    }

    public function postLogin(LoginForm $loginForm)
    {
        $email = \Request::input('email');
        $password = \Request::input('password');

        if (Auth::attempt(['email' => $email, 'password' => $password]))
        {
            return redirect()->intended('dashboard');
        }
        else
        {
            return redirect('users/login')->withErrors(\Lang::get("messages.wrong_credentials"));
        }
    }
    /*
    * muestra la página de perfil del usuario
    */
    public function getProfile()
    {
        return view("users.profile");
    }

    public function postProfile(ProfileForm $profileForm)
    {
        $id = Auth::user()->id;
        $user = User::find($id);
        $user->email = \Request::input('email');
        $user->name = \Request::input('name');
        $user->save();
        \Session::flash('success_profile', \Lang::get("messages.success_profile"));
        return redirect()->intended('users/profile');
    }

    /*
    * hace logout
    */
    public function getLogout()
    {
        Auth::logout();
        return redirect('users/login');
    }
}
