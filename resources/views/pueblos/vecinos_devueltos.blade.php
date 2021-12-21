@extends("master2")


@section('content')

    <div class="row">
        <div class="col-md-12">
    <h4 class="text-center title-table"><span class="php-artisan">{{ $usuarios->total() }}</span> vecinos encontrados en {{ $pueblo->title }}</h4> 
    <br><br>           
                <ul class="nav nav-pills">
		          <li class="navbar-right">
		            <button onclick="back()" title="Retrocede al listado de pueblos" class="btn btn-default"><span class="glyphicon glyphicon-arrow-left"></span> Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
		          </li>
		        </ul>
        	<br>

            @if(!$usuarios->isEmpty())


                <table class="table table-bordered table-striped table-hover">

    <thead>
        <tr>
            <th>Apellidos</th>
            <th>Nombre</th>
            <th>Calle</th>
            <th>Observaciones</th>
            <th>Orden</th>
            
        </tr>
    </thead>

    <tbody>
        @foreach ($usuarios as $usuario)
            <tr>
                <td> {{ strtoupper($usuario->surnames) }}</td>
                <td> {{ strtoupper($usuario->name) }}</td>
                <td> {{ strtoupper($usuario->street) }} nº <b>{{ $usuario->number_street }}<b></td>
                <td> {{ $usuario->observaciones }}</td>
                <td> {{ $usuario->number }}</td>
                {!! Form::close() !!}
            </tr>
        @endforeach
    </tbody>

</table>

                
            @endif

        </div>

    </div>

 @endsection
