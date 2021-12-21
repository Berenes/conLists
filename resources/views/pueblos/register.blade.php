@extends("master")

@section('title')

	@lang('messages.register')

@endsection

@section('sidebar')

    @include('includes/sidebar')

@endsection

@section('content')

    <div class="col-md-6 col-md-offset-3">
            <br>
            <br>
    <h1 class="text-muted text-center">Crear Pueblo</h1>
        <br>

        <ul class="nav nav-pills">
            <li class="navbar-right">
                {!! Html::link(url('pueblos/all'), \Lang::get('messages.town_list'),array(
                    'title' => 'Listado de pueblos',
                    'class' => 'glyphicon glyphicon-arrow-left')) !!}
            </li>                            
        </ul>
            <br>

            @if (Session::has('town_created'))
            <div class="alert alert-success">{!! Session::get('town_created') !!}</div>
            @endif


        {{-- Incluimos el template que muestra errores --}}
        @include('includes/errors')

        <div class="form-group">

    	{!! Form::open(['url' => 'pueblos/register', 'class' => 'form']) !!}

            {!! Form::label('unidad_id', Lang::get('messages.unidad_select')) !!}

               {{--  
               {!! Form::select('unidades', $unidades, null,  ['class'=>'form-control unity'], ['id' => 'unidades']) !!} --}}
                 
            {!! Form::select('unidad_id',$unidad->lists('title', 'id'), old($unidad->find('id')), ['class'=>'form-control'], ['id' => 'unidad_id']) !!}
   
                <br />

                <input id="unity" name="unity" type="hidden" value=" ">
                 
                <br> 
            {!! Form::label('seccion_id', Lang::get('messages.section_select')) !!}
                 
                 
            {!! Form::select('seccion_id', ['placeholder'=>''], null ,['class'=>'form-control'],['id'=>'seccion_id']) !!}  
                 {{-- 
                 {!! Form::select('seccion', $seccion->lists('title', 'id'), old($seccion->find('id')), ['class'=>'form-control section']) !!}--}}                 
                 
                <br />
                <input id="section" name="section" type="hidden" value=" ">
                <br> 
                 
                 
            {!! Form::label('name', Lang::get('messages.name')) !!}
                 
            {!! Form::text('title', old('title'), ["class" => "form-control"]) !!}<br>               
                 
                 
            {!! Form::submit(Lang::get('messages.create_town'), ["class" => "btn btn-sing btn-block"]) !!}
                 
        {!! Form::close() !!}

    	</div>

    </div>

    <script  type="text/javascript">

    $(function () {
            /*
            $("#unidades").change(function(event){
                $.get("sections/"+event.target.value+"",function (response, unidades) {
                    $("#secciones").empty();
                    for (i = 0; i <response.length; i++) {
                        $("#secciones").append("<option value='"+response[i].id+"'> "+response[i].title+"</option>");
                    }
                });
            });            
            */
            $("#unidad_id").change(event => {
                $.get(`sections/${event.target.value}`, function(res, sta){
                    $( "select#seccion_id option" ).empty();               
                    
                    res.forEach(element => {
                        $("#seccion_id").prepend(`<option value=${element.id}> ${element.title} </option>`);
                    });
                });
            });

    
        
        $('select').change(function() {
            var str = "";
            $( "select#unidad_id option:selected" ).each(function() {
              str += $( this ).attr("value");
            });
            $('#unity').attr('value', str);

            //#####
            //
            var str2 = "";
            $( "select#seccion_id option:selected" ).each(function() {
              str2 += $( this ).attr("value");
                console.log(str2);
            });
            $('#section').attr('value', str2);

            //#####

            
        }).trigger( "change" );
        

    });    

    </script>

@endsection
