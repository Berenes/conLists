@extends("master")

@section('title')

  @lang('messages.register')

@endsection

@section('sidebar')

    @include('includes/sidebar')

@endsection

@section('content')


    @if(Session::has('success'))
          <div class="alert-box success">
          <h2>{!! Session::get('success') !!}</h2>
          </div>
        @endif

       


<br>
<br>
<br>
<br>
<br>
 {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')

    
      <div class="form-group has-success" align="center">

      {!! Form::open(array('url'=>'apply/upload','method'=>'POST', 'files'=>true, "class"=>"form-inline")) !!}

            {!! Form::file('image', ["class" => "form-control file"]) !!}
            

            {!! Form::submit(' Subir archivo ', array("class" => "btn btn-sing glyphicon glyphicon-picture")) !!}

      {!! Form::close() !!}
          
      </div>



   </div>


@endsection

