
@extends("master")

@section('title')

	@lang('messages.login')

@endsection

@section('sidebar')

	@include('includes/sidebar')

@endsection

@section('content')

    <div class="row">
        <div class="col-md-12">

			<br>
                <ul class="nav nav-pills">
                  <li class="navbar-right">
                    <button onclick="back()" title="Volver">Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
                  </li>

                </ul>
            <br>

            {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')

        <h1 class="text-muted text-center">Buscar Vecino</h1>
        <br>
        <br>

        <div class="form-group text-center">

            {!! Form::open(['method' =>'POST', 'url' => 'usuarios/vecsearch', 'class' => 'form navbar-form navbar-center searchform']) !!}

                {!! Form::text('surnames', null,
                           array('required',
                                'class'=>'form-control',
                                'placeholder'=>'Buscar vecino...')) !!}

                {!! Form::submit('Introduce apellidos',
                                array('class'=>'btn btn-sing')) !!}
                

            {!! Form::close() !!}

        </div>   


        </div>

    </div>

@endsection
