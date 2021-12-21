@extends("master")

@section('title')

  @lang('messages.upload_map')

@endsection

@section('sidebar')

    @include('includes/sidebar')

@endsection

@section('content')
<div class="col-md-8 col-md-offset-1" align="center">
<br><br>
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

     @if (Session::has('town_upload'))
            <div class="bg-info"><br><p class="text-info">{!! Session::get('town_upload') !!}</p><br></div>
            <br>
    @endif

    @if (Session::has('upload_map'))
            <div class="text-center alert alert-success">{!! Session::get('upload_map') !!}</div>
    @endif



 {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')


      <div class="form-group has-success" align="center">

      {!! Form::open(array('url'=>'pueblos/subir/'.$pueblo,'method'=>'POST', 'files'=>true, "class"=>"form-inline")) !!}

            {!! Form::file('image', ["class" => "form-control file"]) !!}


            {!! Form::submit(' Subir archivo ', array("class" => "btn btn-sing glyphicon glyphicon-picture")) !!}

            <input id="town" name="town" type="hidden" value="{{ $pueblo->title }}">

      {!! Form::close() !!}

      </div>



   </div>


@endsection

