@extends("master")

@section('title')

	@lang('messages.register')

@endsection

@section('sidebar')

    @include('includes/sidebar')

@endsection

@section('content')

    <div class="col-md-6 col-md-offset-3">

        <h3 class="text-muted text-center">Crear Vecino<br><br>
            <span class="down-tables">Antes de nada</span>
        </h3>

        <br>

        @if (Session::has('neighbor_created'))
            <div class="alert alert-success">{!! Session::get('neighbor_created') !!}</div>
        @endif


        {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')

        <div class="form-group">


    		{!! Form::open(['url' => 'usuarios/register', 'class' => 'form']) !!}


                {!! Form::label('unidades', Lang::get('messages.unidad_select')) !!}

               {!! Form::select('unidades', $unidades, null,  ['class'=>'form-control unity'], ['id' => 'unidades']) !!}

       <br />

       <input id="unity" name="unity" type="hidden" value=" ">
                <br>
                {!! Form::label('secciones', Lang::get('messages.section_select')) !!}

               {!! Form::select('secciones', ['placeholder'=>''], null ,['class'=>'form-control section','id'=>'secciones']) !!}

       <br />
               <input id="section" name="section" type="hidden" value=" ">
                <br>

               {!! Form::label('pueblos', Lang::get('messages.town_select')) !!}

               {!! Form::select('pueblos', ['placeholder'=>''], null ,['class'=>'form-control town','id'=>'pueblos']) !!}

       <br />
               <input id="town" name="town" type="hidden" value=" ">
                <br>





    	        {!! Form::submit(Lang::get('messages.select_values'), ["class" => "btn btn-sing btn-block"]) !!}

    	    {!! Form::close() !!}

    	</div>

    </div>

    <script>
    // Dinamics selects

        $(function () {

            $("#unidades").change(event => {
                $.get(`sections/${event.target.value}`, function(res, sta){
                    $( "select#secciones option" ).empty();
                    $( "select#pueblos option" ).empty();

                    res.forEach(element => {
                        $("#secciones").prepend(`<option value=${element.id}> ${element.title} </option>`);
                    });
                });
            });

            $("#secciones").change(event => {
                $.get(`pueblos/${event.target.value}`, function(res, sta){
                    $( "select#pueblos option" ).empty();

                    res.forEach(element => {
                        $("#pueblos").prepend(`<option value=${element.id}> ${element.title} </option>`);
                    });
                });
            });
        });

    $(function () {
        $('select').change(function() {
            var str = "";
            $( "select.unity option:selected" ).each(function() {
              str += $( this ).attr("value");
            });
            $('#unity').attr('value', str);

            //#####
            //
            var str2 = "";
            $( "select.section option:selected" ).each(function() {
              str2 += $( this ).attr("value");
            });
            $('#section').attr('value', str2);

            //#####
            //
            var str3 = "";
            $( "select.town option:selected" ).each(function() {
              str3 += $( this ).attr("value");
            });
            $('#town').attr('value', str3);

            //#####


        }).trigger( "change" );

    });

    </script>

@endsection
