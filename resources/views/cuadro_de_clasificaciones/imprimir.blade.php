@extends("master2")

@section('content')



    <h4 class="text-center">Mesa de Clasificación de <span class="php-artisan">{{ $unidad->city }}</span> ordenada por Secciones</h4>
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
            <br>
            <br>




    @if(!$cuadro_de_clasificaciones->isEmpty())

    <div class="row">
        <div class="col-md-3">

            <p align="center"><button  title="Sección 1" class="btn btn-default"><span class="glyphicon glyphicon-book"></span> Seccion 1</button></p>
        </div>


        <div class="col-md-3">

            <p align="center"><button  title="Sección 2" class="btn btn-default"><span class="glyphicon glyphicon-book"></span> Seccion 2</button></p>
        </div>

        <div class="col-md-3">

            <p align="center"><button  title="Sección 3" class="btn btn-default"><span class="glyphicon glyphicon-book"></span> Seccion 3</button></p>
        </div>

        <div class="col-md-3">

            <p align="center"><button  title="Sección 4" class="btn btn-default"><span class="glyphicon glyphicon-book"></span> Seccion 4</button></p>
        </div>
    </div>
    <br>

    <div class="row">
        <div class="col-md-3">


            <table class="table table-hover">

                <thead>
                    <tr>
                        <td class="text-center claves"><b>Calle</b></td>

                        <td class="claves"><b>Numeración</b></td>
                        <td></td>

                    </tr>
                </thead>

    <tbody>
        @foreach ($cuadro_de_clasificaciones as $cuadro_de_clasificacion)

            @if($cuadro_de_clasificacion->number_section ==1)
                    <tr>
                        <td class="text-center">{{ ucwords($cuadro_de_clasificacion->title)}}</td>

                        <td class="php-artisan claves">{{ $cuadro_de_clasificacion->number_street }} </td>

                        <td>
                            {!! Html::image('uploads/iconos/icono-'.$cuadro_de_clasificacion->clave.'.svg',
                    ' ', array(
                        'width' =>'15px',
                        )) !!}
                        </td>
                    </tr>

            @endif

        @endforeach

    </tbody>




            </table>

       </div>

   <div class="col-md-3">

            <table class="table table-hover">

                <thead>
                    <tr>
                        <td class="text-center"><b>Calle</b></td>

                        <td><b>Numeración</b></td>
                        <td></td>

                    </tr>
                </thead>

    <tbody>
        @foreach ($cuadro_de_clasificaciones as $cuadro_de_clasificacion)

            @if($cuadro_de_clasificacion->number_section ==2)
                    <tr>
                        <td class="text-center">{{ ucwords($cuadro_de_clasificacion->title)}}</td>

                        <td class="php-artisan claves">{{ $cuadro_de_clasificacion->number_street }} </td>
                                                <td>
                            {!! Html::image('uploads/iconos/icono-'.$cuadro_de_clasificacion->clave.'.svg',
                    ' ', array(
                        'width' =>'15px',
                        )) !!}
                        </td>
                    </tr>

            @endif

        @endforeach

    </tbody>




            </table>

       </div>

   <div class="col-md-3">



            <table class="table table-hover">

                <thead>
                    <tr>
                        <td class="text-center"><b>Calle</b></td>

                        <td><b>Numeración</b></td>
                        <td></td>

                    </tr>
                </thead>

    <tbody>
        @foreach ($cuadro_de_clasificaciones as $cuadro_de_clasificacion)

            @if($cuadro_de_clasificacion->number_section ==3)
                    <tr>
                        <td class="text-center">{{ ucwords($cuadro_de_clasificacion->title)}}</td>

                        <td class="php-artisan claves">{{ $cuadro_de_clasificacion->number_street }} </td>
                                                <td>
                            {!! Html::image('uploads/iconos/icono-'.$cuadro_de_clasificacion->clave.'.svg',
                    ' ', array(
                        'width' =>'15px',
                        )) !!}
                        </td>
                    </tr>

            @endif

        @endforeach

    </tbody>




            </table>

       </div>
   <div class="col-md-3">

            <table class="table table-hover">

                <thead>
                    <tr>
                        <td class="text-center"><b>Calle</b></td>

                        <td><b>Numeración</b></td>
                        <td></td>

                    </tr>
                </thead>

    <tbody>
        @foreach ($cuadro_de_clasificaciones as $cuadro_de_clasificacion)

            @if($cuadro_de_clasificacion->number_section ==4)
                    <tr>
                        <td class="text-center">{{ ucwords($cuadro_de_clasificacion->title)}}</td>

                        <td class="php-artisan claves">{{ $cuadro_de_clasificacion->number_street }} </td>
                                                <td>
                            {!! Html::image('uploads/iconos/icono-'.$cuadro_de_clasificacion->clave.'.svg',
                    ' ', array(
                        'width' =>'15px',
                        )) !!}
                        </td>
                    </tr>

            @endif

        @endforeach

    </tbody>




            </table>

       </div>

       </div>

<br>
<br>


<div class="row">

        <div class="col-md-3">

            <p align="center"><button  title="Sección 5" class="btn btn-default"><span class="glyphicon glyphicon-book"></span> Seccion 5</button></p>
        </div>

        <div class="col-md-3">

            <p align="center"><button  title="Sección 6" class="btn btn-default"><span class="glyphicon glyphicon-book"></span> Seccion 6</button></p>
        </div>

        <div class="col-md-3">

            <p align="center"><button  title="Sección 7" class="btn btn-default"><span class="glyphicon glyphicon-book"></span> Seccion 7</button></p>
        </div>

        <div class="col-md-3">

            <p align="center"><button  title="Sección 8" class="btn btn-default"><span class="glyphicon glyphicon-book"></span> Seccion 8</button></p>
        </div>

    </div>
    <br>

    <div class="row">

        <div class="col-md-3">

            <table class="table table-hover">

                <thead>
                    <tr>
                        <td class="text-center"><b>Calle</b></td>

                        <td><b>Numeración</b></td>
                        <td></td>

                    </tr>
                </thead>

    <tbody>
        @foreach ($cuadro_de_clasificaciones as $cuadro_de_clasificacion)

            @if($cuadro_de_clasificacion->number_section ==5)
                    <tr>
                        <td class="text-center">{{ ucwords($cuadro_de_clasificacion->title)}}</td>

                        <td class="php-artisan claves">{{ $cuadro_de_clasificacion->number_street }} </td>
                                                <td>
                            {!! Html::image('uploads/iconos/icono-'.$cuadro_de_clasificacion->clave.'.svg',
                    ' ', array(
                        'width' =>'15px',
                        )) !!}
                        </td>
                    </tr>

            @endif

        @endforeach

    </tbody>




            </table>

       </div>

   <div class="col-md-3">


            <table class="table table-hover">

                <thead>
                    <tr>
                        <td class="text-center"><b>Calle</b></td>

                        <td><b>Numeración</b></td>
                        <td></td>

                    </tr>
                </thead>

    <tbody>
        @foreach ($cuadro_de_clasificaciones as $cuadro_de_clasificacion)

            @if($cuadro_de_clasificacion->number_section ==6)
                    <tr>
                        <td class="text-center">{{ ucwords($cuadro_de_clasificacion->title)}}</td>

                        <td class="php-artisan claves">{{ $cuadro_de_clasificacion->number_street }} </td>
                                                <td>
                            {!! Html::image('uploads/iconos/icono-'.$cuadro_de_clasificacion->clave.'.svg',
                    ' ', array(
                        'width' =>'15px',
                        )) !!}
                        </td>
                    </tr>

            @endif

        @endforeach

    </tbody>




            </table>

       </div>

   <div class="col-md-3">


            <table class="table table-hover">

                <thead>
                    <tr>
                        <td class="text-center"><b>Calle</b></td>

                        <td><b>Numeración</b></td>
                        <td></td>

                    </tr>
                </thead>

    <tbody>
        @foreach ($cuadro_de_clasificaciones as $cuadro_de_clasificacion)

            @if($cuadro_de_clasificacion->number_section ==7)
                    <tr>
                        <td class="text-center">{{ ucwords($cuadro_de_clasificacion->title)}}</td>

                        <td class="php-artisan claves">{{ $cuadro_de_clasificacion->number_street }} </td>
                                                <td>
                            {!! Html::image('uploads/iconos/icono-'.$cuadro_de_clasificacion->clave.'.svg',
                    ' ', array(
                        'width' =>'15px',
                        )) !!}
                        </td>
                    </tr>

            @endif

        @endforeach

    </tbody>




            </table>

       </div>
   <div class="col-md-3">

            <table class="table table-hover">

                <thead>
                    <tr>
                        <td class="text-center"><b>Calle</b></td>

                        <td><b>Numeración</b></td>
                        <td></td>

                    </tr>
                </thead>

    <tbody>
        @foreach ($cuadro_de_clasificaciones as $cuadro_de_clasificacion)

            @if($cuadro_de_clasificacion->number_section ==8)
                    <tr>
                        <td class="text-center">{{ ucwords($cuadro_de_clasificacion->title)}}</td>

                        <td class="php- claves">{{ $cuadro_de_clasificacion->number_street }} </td>
                                                <td>
                            {!! Html::image('uploads/iconos/icono-'.$cuadro_de_clasificacion->clave.'.svg',
                    ' ', array(
                        'width' =>'15px',
                        )) !!}
                        </td>
                    </tr>

            @endif

        @endforeach

    </tbody>




            </table>

       </div>

       </div>







    @endif

 @endsection
