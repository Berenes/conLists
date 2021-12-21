@extends("master")

@section('title')

	@lang('messages.register')

@endsection

@section('sidebar')

    @include('includes/sidebar')

@endsection

@section('content')

    <div class="col-md-6 col-md-offset-3">

        
          
          
          <ul class="nav nav-pills">
            <li class="navbar-left">
              Crear Vecino en 
              <b>{{ $pueblo->title }}</b>
            </li>
            <li class="navbar-right">
                     {!! Html::link(url('pueblos/vecinos/'.$pueblo->id), \Lang::get('messages.show_neighbors'),
                            array('title' => ' Mostrar vecinos ',
                                    'class'  =>'btn btn-default glyphicon glyphicon-user')) !!}  
                  
            </li>
          </ul>
            
         
        <br>

        @if (Session::has('saved_values'))
            <div class="alert alert-success">{!! Session::get('saved_values') !!}</div>
        @endif


        @if (Session::has('neighbor_created'))
            <div class="alert alert-success">{!! Session::get('neighbor_created') !!}</div>
        @endif

        {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')
       
        <div class="form-group">

    		{!! Form::open(['url' => 'usuarios/registrar', 'class' => 'form']) !!}

              <input id="unidad_id" name="unidad_id" type="hidden" value="{{ $unidad_id }}">
                <br>

              <input id="seccion_id" name="seccion_id" type="hidden" value="{{ $seccion_id }}">
                <br>

              <input id="pueblo_id" name="pueblo_id" type="hidden" value="{{ $pueblo_id }}">
                <br>


              {!! Form::label('numero', Lang::get('messages.numberEmbarrie')) !!}

                {!! Form::text('number', old('number'), ["class" => "form-control"]) !!}<br>

              
              {!! Form::label('nombre', Lang::get('messages.name')) !!}

                {!! Form::text('name', old('name'), ["class" => "form-control"]) !!}<br>


                {!! Form::label('apellidos', Lang::get('messages.last_name')) !!}

                {!! Form::text('surnames', old('surnames'), ["class" => "form-control"]) !!}<br>
                

              {!! Form::label('calle', Lang::get('messages.street')) !!}

              {!! Form::text('street', old('street'), ["class" => "form-control"]) !!}<br> 

                {!! Form::label('numeroCalle', Lang::get('messages.number_street')) !!}

                {!! Form::text('number_street', old('number_street'), ["class" => "form-control"]) !!}<br>

              {!! Form::label('observaciones', Lang::get('messages.observations')) !!}

              {!! Form::text('observaciones', old('observaciones'), ["class" => "form-control"]) !!}<br> 

              
    	        
    	        {!! Form::submit(Lang::get('messages.create_neighbor'), ["class" => "btn btn-sing btn-block"]) !!}

    	    {!! Form::close() !!}

    	</div>

    </div>
   <script type="text/javascript">
     $(function () {
        $("input:text:visible:first").focus();
      });
   </script>

@endsection
