
@extends("master")

@section('title')

	@lang('messages.login')

@endsection

@section('sidebar')

	@include('includes.sidebar')

@endsection

@section('content')

    <div class="row">
        <div class="col-md-12">


			<br>
                <ul class="nav nav-pills">
                  <li class="navbar-right">
                    {!! Html::link(url('usuarios/vecsearch'), \Lang::get('messages.return_search'),
                            array('title' => 'Volver a buscar',
                                    'class'  =>'glyphicon glyphicon-arrow-left')) !!}
                  </li>

                </ul>
            <br>


        <h1 class="text-muted text-center">Buscar Vecino</h1>
        <br>
        <br>

        <div class="form-group text-center">

            {!! Form::open(['method' =>'POST', 'url' => 'usuarios/vecsearch', 'class' => 'form navbar-form navbar-center searchform']) !!}

                {!! Form::text('surnames', null,
                           array('required',
                                'class'=>'form-control',
                                'placeholder'=>'Buscar vecino...')) !!}

                {!! Form::submit('Introduce apellidos',
                                array('class'=>'btn btn-sing')) !!}


            {!! Form::close() !!}

        </div>


        @if (Session::has('neighbors_found'))
            <div class="alert alert-success">{!! Session::get('neighbors_found') !!}</div>
        @endif

        @if (Session::has('no_neighbors_found'))
            <div class="alert alert-success">{!! Session::get('no_neighbors_found') !!}</div>
        @endif


            {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')

        <h2 align="center">{{ $usuarios->total() }} Vecinos encontrados</h2><br><br>

        @if(!$usuarios->isEmpty())

        <table class="table table-bordered table-striped table-hover">

    <thead>
        <tr>

            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Dirección</th>
            <th>Pueblo</th>
            <th>Orden de Embarrie </th>

            <th colspan="2"> </th>
        </tr>
    </thead>

    <tbody>
        @foreach ($usuarios as $usuario)
            <tr>
                <td class="title_table">_ {{ $usuario->name }}</td>
                <td>{{ $usuario->surnames }}</td>
                <td>{{ $usuario->street }} {{ $usuario->number_street }}</td>
                <td>{{ $usuario->pueblo->title}}</td>

                <td>{{ $usuario->number }}</td>

                <td width="60" align="center">
                    {!! Html::link(url('usuarios/edit', $usuario->id), \Lang::get('messages.edit'), array('class' => 'btn btn-success btn-xs')) !!}
                </td>

                <td width="60" align="center">
                    {!! Form::open(array('url' => array('usuarios/destroy', $usuario->id), 'method' => 'DELETE')) !!}

                        <button class="btn btn-xs btn-danger" type="button" data-toggle="modal" data-target="#confirmDelete" data-title="Eliminar vecino" data-message="¿Estás segur@ de que quieres eliminar este vecino ?">
                            <i class="glyphicon glyphicon-trash"></i>  Supr
                        </button>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
    </tbody>

</table>




         {{ $usuarios->render() }}

        @endif


        </div>

    </div>

@endsection
