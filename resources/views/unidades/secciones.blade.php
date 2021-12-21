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
		            <button onclick="back()" title="Retrocede al listado de unidades" class="btn btn-default"><span class="glyphicon glyphicon-arrow-left"></span> Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
		          </li>

		        </ul>
        	<br>

            @if (Session::has('sections_for_unity'))
            <div class="text-center alert alert-success">{!! Session::get('sections_for_unity') !!}</div>
        	@endif
			

            @if(!$secciones->isEmpty())

                @include('partials.table')
                
            @endif

        </div>

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

    
    <script type="text/javascript">
        $(function () {
            $("tr th, tr td").css({
                'text-align':'center'
                });
        });
    </script>

 @endsection
