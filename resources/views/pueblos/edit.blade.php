@extends("master")

@section('title')

	@lang('messages.update_profile')

@endsection

@section('sidebar')

	@include('includes/sidebar')

@endsection

@section('content')

    <div class="col-md-6 col-md-offset-3">
            <br>
            <br>
        <h2 class="text-center">@lang('messages.update_town')</h2>
        <br>
        <ul class="nav nav-pills">
          <li class="navbar-right">
            {!! Html::link(url('pueblos/all'), \Lang::get('messages.return'),
                    array('title' => 'Volver al listado de pueblos',
                            'class'  =>'glyphicon glyphicon-arrow-left')) !!}
          </li>

        </ul>
        <br>

        @include('includes/errors')

        {!! Form::open(['url' => array('pueblos/edit', $pueblo->id), 'class' => 'form']) !!}

            {!! Form::label('unidad', Lang::get('messages.unidad')) !!}

            {!! Form::text('unidad', $seccion->unidad->title, ["class" => "form-control"]) !!}<br>



            {!! Form::label('section', Lang::get('messages.section')) !!}

            {!! Form::text('section', $seccion->title, ["class" => "form-control"]) !!}<br>

            {!! Form::label('title', Lang::get('messages.town')) !!}

            {!! Form::text('title', $pueblo->title, ["class" => "form-control"]) !!}<br>


            {!! Form::submit(Lang::get('messages.update_town'), ["class" => "btn btn-sing btn-block"]) !!}

        {!! Form::close() !!}

    </div>

@endsection
