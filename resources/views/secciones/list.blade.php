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

            @if (Session::has('section_updated'))
            	<div class="text-center alert alert-success">{!! Session::get('section_updated') !!}</div>       	

            @elseif (Session::has('section_deleted'))
            	<div class="text-center alert alert-success">{!! Session::get('section_deleted') !!}</div>
            @else
				<h2 align="center">Listado de Secciones</h2><br><br>
        	@endif
			


            @if(!$secciones->isEmpty())

                <table class="table table-bordered table-striped">

                    <thead>
			              <tr>
			                <th class="text-center">
			                	{{ $secciones->count() }}
			                	@if($secciones->count() == 1)
			                		@lang('messages.section')
			                	@else
			                		@lang('messages.sections')
			                	@endif
			                </th>
			                <th class="text-center">@lang('messages.unidad')</th>
			                <th class="text-center">Pueblos asociados</th>
			                <th colspan="2"></th>
			              </tr>
					  </thead>

                      <tbody>
			              @foreach ($secciones as $seccion)
			                  <tr>
			                    <td class="title_table text-center">{{ $seccion->title }}</td>
			                    <td class="title_table text-center">{{ $seccion->unidad->title }}</td>
			                    
								<td class="text-center">
			                      {!! Html::link(url('secciones/pueblos', $seccion->id), \Lang::get('messages.towns'), array('class' => 'btn btn-primary btn-xs', 
			                      		'title' =>'Puebloss asociados a esta Sección')) !!}
			                    </td>

			                    <td class="text-center">
			                      {!! Html::link(url('secciones/edit', $seccion->id), \Lang::get('messages.edit'), array('class' => 'btn btn-success btn-xs')) !!}
			                    </td>

			                    <td class="text-center">
			                      {!! Form::open(array('url' => array('secciones/destroy', $seccion->id), 'method' => 'DELETE', 'class' =>'confirm')) !!}

	<button class="btn btn-xs btn-danger" type="button" data-toggle="modal" data-target="#confirmDelete" data-title="" data-message="¿Estás segur@ de que quieres eliminar la Sección {{ $seccion->title }}, se perderán todos los datos que de ésta dependan?">
        <i class="glyphicon glyphicon-trash"></i> @lang('messages.delete')
    </button>

			                      {!! Form::close() !!}
			                    </td>
			                  </tr>
			              @endforeach
				  	  </tbody>

                </table>
                {{ $secciones->render() }}
            @endif

            <br>
		          <p class=" text-center">		          	
		          	<span class="glyphicon glyphicon-share-alt"></span>
		          		<b>
		            		{!! Html::link(url('secciones/register'), \Lang::get('messages.create_section'),
		                    array('title' => 'Crear Sección')) !!}
		                </b> 
		            		           
		          </p>

        	<br>

        </div>

    </div>

@endsection
