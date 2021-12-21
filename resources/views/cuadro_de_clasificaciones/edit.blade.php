@extends("master")

@section('title')

	@lang('messages.update_profile')

@endsection

@section('sidebar')

	@include('includes/sidebar')

@endsection

@section('content')

    <div class="col-md-10 col-md-offset-1">
    <br>
    <ul class="nav nav-pills">
          <li class="navbar-left">
            Editar calle <b>{{ $cuadro_de_clasificacion->title}}</b>
          </li>
          <li class="navbar-right">
                <button onclick="back()" title="Retrocede al listado de mesa de clasificación" class="btn btn-default"><span class="glyphicon glyphicon-arrow-left"></span> Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
              </li>

        </ul>
    <br>


        @include('includes/errors')

        {!! Form::open(['url' => array('cuadro_de_clasificaciones/edit', $cuadro_de_clasificacion->id), 'class' => 'form']) !!}

            {!! Form::label('title', Lang::get('messages.street')) !!}

                {!! Form::text('title', $cuadro_de_clasificacion->title, ["class" => "form-control"]) !!}<br>


              {!! Form::label('seccion', Lang::get('messages.section')) !!}

                {!! Form::text('number_section', $cuadro_de_clasificacion->number_section, ["class" => "form-control"]) !!}<br>


                {!! Form::label('numeracion', Lang::get('messages.numeracion')) !!}

                {!! Form::text('number_street', $cuadro_de_clasificacion->number_street, ["class" => "form-control"]) !!}<br>


                {!! Form::label('clave', Lang::get('messages.key')) !!}

                {!! Form::text('clave', $cuadro_de_clasificacion->clave, ["class" => "form-control"]) !!}<br>

                {!! Form::submit(Lang::get('messages.update_classif'), ["class" => "btn btn-sing btn-block"]) !!}

        {!! Form::close() !!}

        <br>
        <br>
        <br>
        <br>

    </div>

@endsection
