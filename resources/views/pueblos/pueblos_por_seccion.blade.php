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


			<br>
				<ul class="nav nav-pills">
		          <li class="navbar-right">
		            {!! Html::link(url('pueblos/all'), \Lang::get('messages.return'),
		                    array('title' => 'Volver',
		                            'class'  =>'glyphicon glyphicon-arrow-left')) !!}
		          </li>

		        </ul>
			<br>         

        @if (Session::has('towns_found'))
        
            <h2 align="center">{{ $pueblos->total() }} Pueblos encontrados de la sección "{!! $section->title !!}"</h2><br><br>
        @endif

        @if (Session::has('no_found_towns'))
            <div class="alert alert-success">{!! Session::get('no_found_towns') !!}</div>
        @endif


						 

        @if(isset($pueblos) && !$pueblos->isEmpty())

	        <table class="table table-bordered table-striped table-hover">

    			<thead>
					<tr>
						<th> Pueblos <span class="glyphicon glyphicon-book"> </span></th>
			
						<th> Vecinos asociados <span class="glyphicon glyphicon-user"></th>
						<th> </th>
						<th> </th>
					</tr>
				</thead>

    			<tbody>
				@foreach ($pueblos as $pueblo)
					<tr>
			   			<td class="title_table">_ {{ $pueblo->title }}</td>
			   			<td>{!! Html::link(url('pueblos/vecinos', $pueblo->id), \Lang::get('messages.neighbors'), array('class' => 'btn btn-warning btn-xs', 
                                        'title' =>'Vecinos asociados a esta Sección')) !!}</td>
			   	

			    		<td width="60" align="center">
			        		{!! Html::link(url('pueblos/edit', $pueblo->id), \Lang::get('messages.edit'), array('class' => 'btn btn-success btn-xs')) !!}
			    		</td>

			    		<td width="60" align="center">
			        		{!! Form::open(array('url' => array('pueblos/destroy', $pueblo->id), 'method' => 'DELETE')) !!}
			                          
			            		<button class="btn btn-xs btn-danger" type="button" data-toggle="modal" data-target="#confirmDelete" data-title="" data-message="¿Estás segur@ de que quieres eliminar el Pueblo '{{ $pueblo->title }}', se perderán todos los datos de los vecinos que de '{{ $pueblo->title }}', dependan?">
                            <i class="glyphicon glyphicon-trash"></i>  Supr
                        </button>
			        	{!! Form::close() !!}
			   	 		</td>
					</tr>
				@endforeach
			</tbody>

		</table>

	                
	         {{ $pueblos->render() }}
                       
         @endif

            
        </div>

    </div>

@endsection

