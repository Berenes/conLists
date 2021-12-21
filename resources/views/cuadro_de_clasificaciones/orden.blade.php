@extends("master2")

@section('content')

    <div class="row">

    <h4 class="text-center">Mesa de Clasificación de <span class="php-artisan">{{ $unidad->city }}</span> por orden de Alfabético</h4>
            <br><br>
            <ul class="nav nav-pills">
                  <li class="navbar-right">
                    <button onclick="back()" title="Retrocede al listado de clasificación" class="btn btn-default"><span class="glyphicon glyphicon-arrow-left"></span> Volver</button>
                        <script type="text/javascript">
                            function back()
                            {
                                history.back();
                            }
                        </script>
                  </li>
                </ul>
            <br>

        <div class="col-md-3">


            @if(!$cuadro_de_clasificaciones->isEmpty())



            <table class="table table-hover">

                <thead>
                    <tr>
                        <td class="text-center"><b>Calle</b></td>
                        <td><b>Sección</b></td>
                        <td><b>Numeración</b></td>
                        <td><b>Clave</b></td>

                    </tr>
                </thead>

                <tbody>
                    @foreach ($cuadro_de_clasificaciones as $cuadro_de_clasificacion)
                    <tr>
                        <td class="text-center">{{ ucwords($cuadro_de_clasificacion->title)}}</td>
                        <td><b><span class="color-calle">{{ $cuadro_de_clasificacion->number_section }}</span></b></td>
                        <td class="php-artisan">{{ $cuadro_de_clasificacion->number_street }} </td>

                        <td>
                            {!! Html::image('uploads/iconos/icono-'.$cuadro_de_clasificacion->clave.'.svg',
                    ' ', array(
                        'width' =>'25px',
                        )) !!}
                        </td>
                    </tr>
                    @endforeach
                </tbody>

            </table>




            @endif







        </div>

    </div>

 @endsection
