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



            @if (Session::has('unidad_updated'))
            <div class="text-center alert alert-success">{!! Session::get('unidad_updated') !!}</div>

            @elseif (Session::has('unidad_deleted'))
            <div class="text-center alert alert-success">{!! Session::get('unidad_deleted') !!}</div>
            @else
			<h2 align="center">Listado de Unidades</h2><br><br>
            @endif


            @if(!$unidades->isEmpty())

                <table class="table table-bordered table-striped text-center">

                    <thead>
			              <tr>
			                <th>
			                	{{ $unidades->count() }}
			                	@if($unidades->count() == 1)
			                		@lang('messages.unidad')
			                	@else
			                		@lang('messages.unidades')
			                	@endif
			                </th>
			                <th>Secciones asociadas</th>
			                <th>Mesa de Clasificación</th>

			              </tr>
					  </thead>

                      <tbody>
			              @foreach ($unidades as $unidad)
			                  <tr>
			                    <td class="title_table">{{ $unidad->title }}</td>

			                    <td>
			                      {!! Html::link(url('unidades/secciones', $unidad->id), \Lang::get('messages.sections'), array('class' => 'btn btn-primary btn-xs',
			                      		'title' =>'Secciones asociadas a esta Unidad')) !!}
			                    </td>

			                    <td>
			             			{!! Html::link(url('cuadro_de_clasificaciones/all', $unidad->id), \Lang::get('messages.mesa'), array('class' => 'btn btn-success btn-xs',
			                      		'title' =>'Mesa de clasificación de la Unidad '.$unidad->title)) !!}
			                    </td>

			                  </tr>
			              @endforeach
				  	  </tbody>

                </table>
                {{ $unidades->render() }}
            @endif

            <br>
		          <p class=" text-center">
		          	<span class="glyphicon glyphicon-share-alt"></span>
		          		<b>
		            		{!! Html::link(url('unidades/register'), \Lang::get('messages.create_unidad'),
		                    array('title' => 'Crear unidad')) !!}
		                </b>

		          </p>

        	<br>

        </div>

    </div>

    <script type="text/javascript">
        $(function () {
            $("tr th, tr td").css({
                'text-align':'center'
                });;
            $(".title_table").css({
                'text-indent':'20px',
                'text-align': 'left !important',
                'font-weight':'500',
                'color': 'rgba(1, 0, 48, .8)'
                });
        });
    </script>

@endsection
