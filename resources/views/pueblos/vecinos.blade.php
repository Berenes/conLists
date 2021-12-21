@extends("master")

@section('title')

	@lang('messages.login')

@endsection

@section('sidebar')

	@include('includes/sidebar')

@endsection

@section('content')

    <div class="row">
        <div class="col-md-12">
            <h4 class="text-center title-table"><span class="php-artisan">{{ $usuarios->total() }}</span> vecinos encontrados en {{ $pueblo->title }}</h4>
        	<br><br>
            <br>
            <br>
        		<ul class="nav nav-pills">
                  <li class="navbar-left">
                     {!! Html::link(url('usuarios/register'), \Lang::get('messages.create_neighbor'),
                            array('title' => ' Crear vecino ',
                                    'class'  =>'btn btn-default glyphicon glyphicon-user')) !!}

                  </li>



                  <li class="navbar">
                     {!! Html::link(url('pueblos/ordenembarrie/'.$pueblo->id), \Lang::get('messages.show_to_embarrie'),
                            array('title' => ' Mostrar por orden de embarrie ',
                                    'class'  =>'btn btn-default glyphicon glyphicon-envelope')) !!}

                  </li>

                  <li class="navbar">
                     {!! Html::link(url('pueblos/imprimirvecinos/'.$pueblo->id), \Lang::get('messages.show_to_print'),
                            array('title' => ' Mostrar para imprimir ',
                                    'class'  =>'btn btn-default glyphicon glyphicon-print')) !!}

                  </li>

                  <li class="navbar">
                     {!! Html::link(url('pueblos/devolverenvios/'.$pueblo->id), \Lang::get('messages.returneds'),
                            array('title' => ' Envíos para devolver ',
                        'class'  =>'btn btn-default glyphicon glyphicon-arrow-left')) !!}

                  </li>

		          <li class="navbar-right">
		            <button onclick="back()" title="Retrocede al listado de pueblos" class="btn btn-default"><span class="glyphicon glyphicon-arrow-left"></span> Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
		          </li>

		        </ul>
        	<br>

        @if (Session::has('neighbor_updated'))
            <div class="alert alert-success">{!! Session::get('neighbor_updated') !!}</div>
        @endif

        @if (Session::has('neighbor_deleted'))
            <div class="alert alert-success">{!! Session::get('neighbor_deleted') !!}</div>
        @endif

            @if(!$usuarios->isEmpty())


                <table class="table table-bordered table-striped table-hover">

    <thead>
        <tr>
            <th>Apellidos</th>
            <th>Nombre</th>
            <th>Calle</th>
            <th>Observaciones</th>
            <th>Orden</th>

            <th colspan="2"> </th>
        </tr>
    </thead>

    <tbody>
        @foreach ($usuarios as $usuario)
            <tr>
                <td> {{ strtoupper($usuario->surnames) }}</td>
                <td> {{ strtoupper($usuario->name) }}</td>
                <td> {{ strtoupper($usuario->street) }} nº <b>{{ $usuario->number_street }}<b></td>
                <td> {{ $usuario->observaciones }}</td>
                <td> {{ $usuario->number }}</td>


                <td width="60" align="center">
                    {!! Html::link(url('usuarios/edit', $usuario->id), \Lang::get('messages.edit'), array('class' => 'btn btn-success btn-xs')) !!}
                </td>

                <td width="60" align="center">
                    {!! Form::open(array('url' => array('usuarios/destroy', $usuario->id), 'method' => 'DELETE')) !!}

                        <button class="btn btn-xs btn-danger" type="button" data-toggle="modal" data-target="#confirmDelete" data-title="" data-message="¿Estás segur@ de que quieres eliminar a {{ $usuario->name }} {{ $usuario->surnames }}?">
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
    </script>
