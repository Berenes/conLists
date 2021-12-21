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
<h1 class="text-muted text-center">Crear Sección</h1>
        

            @if (Session::has('section_created'))
            <div class="alert alert-success">{!! Session::get('section_created') !!}</div>
            @endif


        {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')

        <div class="form-group">

    		{!! Form::open(['url' => 'secciones/register', 'class' => 'form']) !!}

                
                {!! Form::label('unidad', Lang::get('messages.unidad_select')) !!}

               {!! Form::select('unidad', $unidad->lists('title', 'id'), old($unidad->find('id')), ['class'=>'form-control unity']) !!}
                
       <br />
               <input id="unity" name="unity" type="hidden" value=" ">
                <br> 

                {!! Form::label('title', Lang::get('messages.title')) !!}

                {!! Form::text('title', old('title'), ["class" => "form-control"]) !!}<br>               


    	        {!! Form::submit(Lang::get('messages.create_section'), ["class" => "btn btn-sing btn-block"]) !!}

    	    {!! Form::close() !!}

    	</div>

        <br>
             <ul class="nav nav-pills">
          <li class="navbar-right">
            {!! Html::link(url('secciones/all'), \Lang::get('messages.section_list'),
                    array('title' => 'Volver al listado de secciones',
                            'class'  =>'glyphicon glyphicon-folder-open')) !!}
          </li>

        </ul>
            <br>

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
