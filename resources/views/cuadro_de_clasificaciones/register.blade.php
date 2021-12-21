@extends("master")

@section('title')

	@lang('messages.register')

@endsection

@section('sidebar')

    @include('includes/sidebar')

@endsection

@section('content')

    <div class="col-md-6 col-md-offset-3">
            <h3 align="center">Crear mesa de clasificación</h3>
            <br>
            <br>
            <p align="center"><span class="down-tables">Antes de nada</span></p>
        <br>

            @if (Session::has('cuadro_de_clasificacion_created'))
            <div class="alert alert-success">{!! Session::get('cuadro_de_clasificacion_created') !!}</div>
            @endif


        {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')

        <div class="form-group">

    		{!! Form::open(['url' => 'cuadro_de_clasificaciones/register', 'class' => 'form']) !!}


                {!! Form::label('unidad', Lang::get('messages.unidad_select')) !!}

               {!! Form::select('unidad', $unidad->lists('title', 'id'), old($unidad->find('id')), ['class'=>'form-control unity']) !!}

       <br />
               <input id="unity" name="unity" type="hidden" value=" ">
                <br>


    	        {!! Form::submit(Lang::get('messages.create'), ["class" => "btn btn-sing btn-block"]) !!}

    	    {!! Form::close() !!}

    	</div>

    </div>

    <script>
    $(function () {
        $('select').change(function() {
            var str = "";
            $( "select.unity option:selected" ).each(function() {
              str += $( this ).attr("value");
            });
            $('#unity').attr('value', str);

            //#####


        }).trigger( "change" );

    });

    </script>

@endsection
