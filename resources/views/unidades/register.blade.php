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
<h1 class="text-muted text-center">Crear Unidad</h1>
        

            @if (Session::has('unidad_created'))
            <div class="alert alert-success">{!! Session::get('unidad_created') !!}</div>
            @endif


        {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')

        <div class="form-group">

    		{!! Form::open(['url' => 'unidades/register', 'class' => 'form']) !!}


                {!! Form::label('title', Lang::get('messages.title')) !!}

                {!! Form::text('title', old('title'), ["class" => "form-control"]) !!}<br>               


    	        {!! Form::submit(Lang::get('messages.create_unidad'), ["class" => "btn btn-sing btn-block"]) !!}

    	    {!! Form::close() !!}

    	</div>

        <br>
             <ul class="nav nav-pills">
          <li class="navbar-right">
            {!! Html::link(url('unidades/all'), \Lang::get('messages.unidad_list'),
                    array('title' => 'Listado de Unidades',
                            'class'  =>'glyphicon glyphicon-folder-open')) !!}
          </li>
           <br> 

    </div>

@endsection
