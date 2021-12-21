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

            @if (Session::has('user_updated'))
            <br>
            <br>
            <div class="alert alert-success text-center">{!! Session::get('user_updated') !!}</div>
        	@endif

            @if (Session::has('user_deleted'))
            <br>
            <br>
            <div class="alert alert-danger text-center">{!! Session::get('user_deleted') !!}</div>
        	@endif
			
			<br><br>

			<h1 align="center">Listado de Usuarios Registrados</h1><br><br>

            @if(!$usuario->isEmpty())

                <table class="table table-bordered table-striped">

                    <thead>
			              <tr>
			                <th>@lang('messages.name')</th>
			                <th>@lang('messages.last_name')</th>
		                    <th>@lang('messages.email')</th>
		                    <th>@lang('messages.telephone')</th>
			                <th>@lang('messages.edit')</th>
			                <th>@lang('messages.delete')</th>
			              </tr>
					  </thead>

                      <tbody>
			              @foreach ($usuario as $user)
			                  <tr>
			                    <td>{{ $user->nombre }}</td>
			                    <td>{{ $user->apellidos }}</td>
			                    <td>{{ $user->email }}</td>
			                    <td>{{ $user->telefono }}</td> 

			                    <td width="60" align="center">
			                      {!! Html::link(url('usuarios/edit', $user->id), \Lang::get('messages.edit'), array('class' => 'btn btn-success btn-xs')) !!}
			                    </td>

			                    <td width="60" align="center">
			                      {!! Form::open(array('url' => array('usuarios/destroy', $user->id), 'method' => 'DELETE')) !!}
     <button class="btn btn-xs btn-danger" type="button" data-toggle="modal" data-target="#confirmDelete" data-title="Eliminar Usuario" data-message="¿Estás segur@ de que quieres eliminar este usuario ?">
        <i class="glyphicon glyphicon-trash"></i> @lang('messages.delete')
    </button>
			                      {!! Form::close() !!}
			                    </td>
			                  </tr>
			              @endforeach
				  	  </tbody>

                </table>
                {{ $usuario->render() }}
            @endif

        </div>

    </div>
@endsection
