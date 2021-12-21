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

            @if (Session::has('clasisficacion_updated'))
            <br>
            <br>
            <div class="alert alert-success text-center">{!! Session::get('clasisficacion_updated') !!}</div>
        	@endif

            @if (Session::has('clasisficacion_deleted'))
            <br>
            <br>
            <div class="alert alert-danger text-center">{!! Session::get('clasisficacion_deleted') !!}</div>
        	@endif

			<br><br>
            <h4 class="text-center title-table">Mesa de Clasificacion en la Unidad <span class="php-artisan">{{ $unidad->title }}</span>, <span class="php-artisan">{{ $cuadro_de_clasificaciones->total() }}</span> resultados encontrados.</h4>
            <br><br>
            <br>
            <br>
    <ul class="nav nav-pills">




                  <li class="navbar">
                     {!! Html::link(url('cuadro_de_clasificaciones/register'), \Lang::get('messages.new_clasificacion'),
                            array('title' => ' Crear nueva clasificación',
                                    'class'  =>'btn btn-default glyphicon glyphicon-stats')) !!}

                  </li>


                  <li class="navbar">
                     {!! Html::link(url('cuadro_de_clasificaciones/ordenalfa/'.$unidad->id), \Lang::get('messages.show_to_alphabetical'),
                            array('title' => ' Mostrar por orden de alfabético ',
                                    'class'  =>'btn btn-default glyphicon glyphicon-sort-by-alphabet')) !!}

                  </li>

                  <li class="navbar">
                     {!! Html::link(url('cuadro_de_clasificaciones/imprimir/'.$unidad->id), \Lang::get('messages.show_to_print'),
                            array('title' => ' Mostrar para imprimir ',
                                    'class'  =>'btn btn-default glyphicon glyphicon-print')) !!}

                  </li>

                <li class="navbar-right">
                <button onclick="back()" title="Volver" class="btn btn-default"><span class="glyphicon glyphicon-arrow-left"></span> Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
              </li>

    </ul>
<br><br>

            @if(!$cuadro_de_clasificaciones->isEmpty())

            <div class="table-responsive">


                <table class="table table-bordered table-striped">

                    <thead>
			              <tr>
			                <th>@lang('messages.street')</th>
			                <th>@lang('messages.section')</th>
                            <th>@lang('messages.number_street')</th>
		                    <th>@lang('messages.key')</th>
		                    <th></th>
		                    <th></th>

			              </tr>
					  </thead>

                      <tbody>
			              @foreach ($cuadro_de_clasificaciones as $clasisficacion)
			                  <tr>
			                    <td>{{ $clasisficacion->title }}</td>
			                    <td>{{ $clasisficacion->number_section }}</td>
                                <td>{{ $clasisficacion->number_street }}</td>
			                    <td>{{ $clasisficacion->clave }}</td>

			                    <td width="60" align="center">
			                      {!! Html::link(url('cuadro_de_clasificaciones/edit', $clasisficacion->id), \Lang::get('messages.edit'), array('class' => 'btn btn-success btn-xs')) !!}
			                    </td>

			                    <td width="60" align="center">
			                      {!! Form::open(array('url' => array('cuadro_de_clasificaciones/destroy', $clasisficacion->id), 'method' => 'DELETE')) !!}
     <button class="btn btn-xs btn-danger" type="button" data-toggle="modal" data-target="#confirmDelete" data-title="Eliminar Clasificacion" data-message="¿Estás segur@ de que quieres eliminar este clasisficación ?">
        <i class="glyphicon glyphicon-trash"></i> @lang('messages.delete')
    </button>
			                      {!! Form::close() !!}
			                    </td>
			                  </tr>
			              @endforeach
				  	  </tbody>

                </table>

            </div>
                {{ $cuadro_de_clasificaciones->render() }}
            @endif

        </div>

    </div>

    <script type="text/javascript">
        $(function () {
            $("tr th, tr td").css({
                'text-align':'center'
                });
        });
    </script>

@endsection
