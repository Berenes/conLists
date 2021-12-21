@extends("master2")

@section('content')

    <div class="row">
        <div class="col-md-12">
            <h3 class="text-center">{{ $pueblo->title }}, Orden de Embarrie</h3>
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

            @if($usuarios)



            <table class="table embarrie">

                <thead>
                    <tr>
                        <td><b>Nombre</b></td>
                        <td><b>Dirección</b></td>
                        <td><b>Observaciones</b></td>
                        <td><b>Orden</b></td>
                    </tr>
                </thead>

                <tbody>
                @for ($i = 0; $i < $ultimo; $i++)

                    @foreach ($pueblo->users_number($i) as $usuario)

                    <tr class="embarrie">
                        <td>{{ ucwords($usuario->full_name) }}</td>
                        <td><span class="color-calle"> {{ ucwords($usuario->street) }} nº </span><b> <span class="php-artisan number_street"> {{ $usuario->number_street }}</span></b>

                        </td>

                        <td class="observaciones">{{ $usuario->observaciones }} </td>
                        <td class="observaciones">{{ $usuario->number }} </td>

                    </tr>


                    @endforeach


                <tr>
                    <td colspan="4">
                        <hr class="orden">
                    </td>

                </tr>

                @endfor

                </tbody>
            </table>

            @endif

        </div>

    </div>

 @endsection
