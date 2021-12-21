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
            Editar a <b>{{ $usuario->name.' '.$usuario->surnames}}</b> de <b>{{ $usuario->pueblo->title }}</b>
          </li>
          <li class="navbar-right">
            {!! Html::link(url('pueblos/vecinos/'.$usuario->pueblo_id), \Lang::get('messages.return'),
                    array('title' => 'Volver al listado de usuarios',
                            'class'  =>'glyphicon glyphicon-arrow-left')) !!}
          </li>

        </ul>
    <br>

        @include('includes/errors')

        {!! Form::open(['url' => array('usuarios/edit', $usuario->id), 'class' => 'form']) !!}

            {!! Form::label('numero', Lang::get('messages.numberEmbarrie')) !!}

                {!! Form::text('number', $usuario->number, ["class" => "form-control"]) !!}<br>

              
              {!! Form::label('nombre', Lang::get('messages.name')) !!}

                {!! Form::text('name', $usuario->name, ["class" => "form-control"]) !!}<br>


                {!! Form::label('apellidos', Lang::get('messages.last_name')) !!}

                {!! Form::text('surnames', $usuario->surnames, ["class" => "form-control"]) !!}<br>
                

              {!! Form::label('calle', Lang::get('messages.street')) !!}

              {!! Form::text('street', $usuario->street, ["class" => "form-control"]) !!}<br> 

                {!! Form::label('numeroCalle', Lang::get('messages.number_street')) !!}

                {!! Form::text('number_street', $usuario->number_street, ["class" => "form-control"]) !!}<br>

                {!! Form::label('observaciones', Lang::get('messages.observations')) !!}

              {!! Form::text('observaciones', $usuario->observaciones, ["class" => "form-control"]) !!}<br> 

              {!! Form::submit(Lang::get('messages.update_neighbor'), ["class" => "btn btn-sing btn-block"]) !!}

        {!! Form::close() !!}

        <br>
        <br>
        <br>
        <br>

    </div>

@endsection
