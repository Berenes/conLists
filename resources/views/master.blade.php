<html>
    <head>
        <title>Listado de Pueblos - @yield('title')</title>
        {!! Html::script('js/jquery-2.1.4.min.js') !!}
        {!! Html::script('js/jquery-ui.min.js') !!}
        {!! Html::script('js/bootstrap.min.js') !!}
        {!! Html::script('js/jquery.imageLens.js') !!}
        {!! Html::script('js/site.js') !!}


            {!! Html::style('css/bootstrap.min.css') !!}
            {!! Html::style('css/style.css') !!}
            {!! Html::style('css/styles.css') !!}
            {!! Html::style('css/font-awesome.css') !!}

    </head>



    <body>

        @include('includes.nav')

        @if (Auth::check())

        <div class="container">

                <div class="col-md-2">
                    @yield('sidebar')
                </div>
                <div class="col-md-10">
                    @yield('content')
                </div>

        </div>

        @include('admin.delete_confirm')
    </body>
</html>


@else

    <br>
    <br>
    <br>
    <h3 class="text-muted text-center">No se permite entrar en esta dirección si  estar logueado.</h3>
    <h3 class="text-muted text-center">Inicia sesión arriba.</h3>

@endif
