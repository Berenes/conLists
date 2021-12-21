@extends("master")

@section('title')

  @lang('messages.register')

@endsection

@section('sidebar')

    @include('includes/sidebar')

@endsection

@section('content')

    <div class="col-md-6 col-md-offset-3">
         <br>
         <br>
         <br>

         <ul class="nav nav-pills">
            <li class="navbar-left">
              Crear Clasificación en
              <b>{{ $unidad->title }}</b>
            </li>

            <li class="navbar-right">
                     {!! Html::link(url('cuadro_de_clasificaciones/all/'.$unidad->id), \Lang::get('messages.show_clasificacion'),
                            array('title' => ' Mostrar cuadro de clasificación ',
                                    'class'  =>'btn btn-default glyphicon glyphicon-list-alt')) !!}

            </li>
          </ul>

        <br>

        @if (Session::has('saved_values'))
            <div class="alert alert-success">{!! Session::get('saved_values') !!}</div>
        @endif


        @if (Session::has('clasificacion_created'))
            <div class="alert alert-success">{!! Session::get('clasificacion_created') !!}</div>
        @endif

        {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')

        <div class="form-group">

        {!! Form::open(['url' => 'cuadro_de_clasificaciones/registrar', 'class' => 'form']) !!}

              <input id="unidad_id" name="unidad_id" type="hidden" value="{{ $unidad_id }}">
                <br>


              {!! Form::label('title', Lang::get('messages.street')) !!}

                {!! Form::text('title', old('title'), ["class" => "form-control"]) !!}<br>


              {!! Form::label('section', Lang::get('messages.section')) !!}

                {!! Form::text('number_section', old('number_section'), ["class" => "form-control"]) !!}<br>


                {!! Form::label('number_street', Lang::get('messages.numbers')) !!}

                {!! Form::text('number_street', old('number_street'), ["class" => "form-control"]) !!}<br>

                {!! Form::label('clave', Lang::get('messages.key')) !!}


                {!! Form::text('clave', old('clave'), ["class" => "form-control"]) !!}<br>


              {!! Form::submit(Lang::get('messages.clasificar'), ["class" => "btn btn-sing btn-block"]) !!}

          {!! Form::close() !!}

      </div>

    </div>
   <script type="text/javascript">
     $(function () {
        $("input:text:visible:first").focus();
      });
   </script>

@endsection
