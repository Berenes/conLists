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
        <h2 class="text-center">@lang('messages.update_unidad')</h2>
        <br>
        <ul class="nav nav-pills">
          <li class="navbar-right">
            {!! Html::link(url('unidades/all'), \Lang::get('messages.return'),
                    array('title' => 'Volver al listado de unidades',
                            'class'  =>'glyphicon glyphicon-arrow-left')) !!}
          </li>

        </ul>
        <br>

        @include('includes/errors')

        {!! Form::open(['url' => array('unidades/edit', $unidad->id), 'class' => 'form']) !!}

            {!! Form::label('title', Lang::get('messages.title')) !!}

            {!! Form::text('title', $unidad->title, ["class" => "form-control"]) !!}<br>


            {!! Form::submit(Lang::get('messages.update_unidad'), ["class" => "btn btn-sing btn-block"]) !!}

        {!! Form::close() !!}

    </div>

@endsection
