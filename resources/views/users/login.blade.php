<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Iniciar Sesión</title>
    <title>Listado de Pueblos - @yield('title')</title>
        {!! Html::script('js/jquery-2.1.4.min.js') !!}      
        {!! Html::script('js/bootstrap.min.js') !!}
        {!! Html::script('js/site.js') !!}
        
            {!! Html::style('css/bootstrap.min.css') !!}  
            {!! Html::style('css/style.css') !!}
            {!! Html::style('css/styles.css') !!}
    
</head>
<body>    
    @include('includes.nav')

    <div class="col-md-6 col-md-offset-3">
    <br><br>

        <h1 class="text-muted text-center">@lang('messages.login')</h1>

        {{-- Incluimos el template que muestra errores --}}
        @include('includes.errors')

        <div class="form-group">

            {!! Form::open(['url' => 'users/login', 'class' => 'form']) !!}

                {!! Form::label('email', Lang::get('messages.email')) !!}

                {!! Form::text('email', old('email'), ["class" => "form-control"]) !!}<br>

                {!! Form::label('password', Lang::get('messages.password')) !!}

    	        {!! Form::password('password', ["class" => "form-control"]) !!}

                <br />
    	        {!! Form::submit(Lang::get('messages.login'), ["class" => "btn btn-sing btn-block"]) !!}

            {!! Form::close() !!}

        </div>
    </div>

</body>
</html>


