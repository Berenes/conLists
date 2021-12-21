@extends("master")

@section('title')

	@lang('messages.dashboard')

@endsection

@section('sidebar')

	@include('includes/sidebar')

@endsection

@section('content')
	<br>
	<br>
	{{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')
	<br>



    <div class="col-md-10 col-md-offset-1" align="center">


        		<ul class="nav nav-pills">
		          <li class="navbar-right">
		            <button onclick="back()" title="Retrocede al pueblo {{ $pueblo->title }}" class="btn btn-default"><span class="glyphicon glyphicon-arrow-left"></span> Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
		          </li>

		        </ul>
        	<br>
		@if (file_exists($nombre_fichero))
			@if (Session::has('show_map'))
            	<div class="text-center alert alert-success">{!! Session::get('show_map') !!}</div>
        	@endif


            <div>
			         {!! Html::image('uploads/plano-'.$pueblo->title.'.jpg',
					'a picture', array(
						'id' => 'img_01',
                        'class'     => 'img-thumbnail img-responsive')
						)!!}

            </div>

			@else
				<div class="text-center alert alert-success">No se ha encontrado ninguna imagen del pueblo <b>{{ $pueblo->title }}</b></div>

				<br>
                  <p class=" text-center">
                    <span class="glyphicon glyphicon-share-alt"></span>
                        <b>
                            {!! Html::link(url('pueblos/subir/'.$pueblo->id), \Lang::get('messages.upload_map2'),
                            array('title' => 'Subir mapa del pueblo '.$pueblo->title)) !!}
                        </b>

                  </p>




		@endif
		<br>
	<br>
	<br>
	<br>
	<br>
	</div>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#img_01").imageLens();
        });
    </script>



@endsection



