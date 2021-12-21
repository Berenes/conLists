@extends("master")

@section('title')

  @lang('messages.upload_icono')

@endsection

@section('sidebar')

    @include('includes/sidebar')

@endsection

@section('content')
<div class="col-md-8 col-md-offset-1" align="center">
<br><br>
  <ul class="nav nav-pills">
              <li class="navbar-right">
                <button onclick="back()" title="Retrocede" class="btn btn-default"><span class="glyphicon glyphicon-arrow-left"></span> Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
              </li>

            </ul>
          <br>

     @if (Session::has('icono_upload'))
            <div class="bg-info"><br><p class="text-info">{!! Session::get('icono_upload') !!}</p><br></div>
            <br>
    @endif

    @if (Session::has('upload_icono'))
            <div class="text-center alert alert-success">{!! Session::get('upload_icono') !!}</div>
    @endif



 {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')


      <div class="form-group has-success" align="center">

      {!! Form::open(array('url'=>'cuadro_de_clasificaciones/subiricono/','method'=>'POST', 'files'=>true, "class"=>"form-inline")) !!}

            {!! Form::file('image', ["class" => "form-control file"]) !!}


            {!! Form::submit(' Subir icono ', array("class" => "btn btn-sing")) !!}


      {!! Form::close() !!}

      </div>



   </div>


@endsection

