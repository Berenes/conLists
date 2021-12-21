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
		            <button onclick="back()" title="Retrocede al listado de secciones" class="btn btn-default"><span class="glyphicon glyphicon-arrow-left"></span> Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
		          </li>

		        </ul>
        	<br>
            @if (Session::has('town_updated'))
                <div class="text-center alert alert-success">{!! Session::get('town_updated') !!}</div> 

            @elseif (Session::has('town_deleted'))
                <div class="text-center alert alert-success">{!! Session::get('town_deleted') !!}</div>

            @else (Session::has('towns_for_section'))
            <div class="text-center alert alert-success">{!! Session::get('towns_for_section') !!}</div>
        	@endif
			

            @if(!$pueblos->isEmpty())

                <table class="table table-bordered table-striped table-hover">

    <thead>
        <tr>
            <th> Pueblos <span class="glyphicon glyphicon-globe"> </span></th>
            <th> Vecinos asociados <span class="glyphicon glyphicon-user"> </span></th>
            <th><span class="glyphicon glyphicon-screenshot"></span> Mostrar Plano</th>
            <th><span class="glyphicon glyphicon-upload"></span> Subir Plano</th>
            
            <th colspan="2"> </th>
        </tr>
    </thead>

    <tbody>
        @foreach ($pueblos as $pueblo)
            <tr>
                <td class="title_table">_ {{ $pueblo->title }}</td>


                <td>{!! Html::link(url('pueblos/vecinos', $pueblo->id), \Lang::get('messages.neighbors'), array('class' => 'btn btn-warning btn-xs', 
                                    'title' =>'Vecinos asociados al Pueblo '.$pueblo->title)) !!}</td>

                <td>{!! Html::link(url('pueblos/mostrar', $pueblo->id), \Lang::get('messages.show'), array('class' => 'btn btn-primary btn-xs', 
                                    'title' =>'Plano del pueblo '.$pueblo->title)) !!}</td>

                <td>{!! Html::link(url('pueblos/subir', $pueblo->id), \Lang::get('messages.upload'), array('class' => 'btn btn-sing btn-xs', 
                                    'title' =>'Subir plano del pueblo '.$pueblo->title)) !!}</td>

                <td width="60">
                    {!! Html::link(url('pueblos/edit', $pueblo->id), \Lang::get('messages.edit'), array('class' => 'btn btn-success btn-xs')) !!}
                </td>

                <td width="60">
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
                
            @endif

        </div>

        <br>
                  <p class=" text-center">                  
                    <span class="glyphicon glyphicon-share-alt"></span>
                        <b>
                            {!! Html::link(url('pueblos/register'), \Lang::get('messages.create_town'),
                            array('title' => 'Crear Pueblo')) !!}
                        </b> 
                                       
                  </p>

            <br>

    </div>
    <script type="text/javascript">
        $(function () {
            $("tr th, tr td").css({
                'text-align':'center'
                });
        });
    </script>

 @endsection
