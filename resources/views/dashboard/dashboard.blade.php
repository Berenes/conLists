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
    <div class="col-md-10 col-md-offset-1">
    	
			{!! Html::image('uploads/50635.jpg', 
					'a picture', array('class' => 'img-thumbnail img-responsive')) !!} 
    	
			{{--{!! Html::image('images/svg/writer.svg', 
					'a picture', array(
						'width' =>'3%',
						)) !!}--}}

		
	</div>

@endsection


