<table class="table table-bordered table-striped table-hover">

    <thead>
		<tr>
			<th> Circulares o Secciones <span class="glyphicon glyphicon-book"> </span></th>
			<th> Pueblos asociados o Calles asociadas <span class="glyphicon glyphicon-globe" > </span> </th>
			
			<th> </th>
			<th> </th>
		</tr>
	</thead>

    <tbody>
		@foreach ($secciones as $seccion)
			<tr>
			   	<td class="title_table">_ {{ $seccion->title }}</td>
			   	<td>{!! Html::link(url('secciones/pueblos', $seccion->id), \Lang::get('messages.towns'), array('class' => 'btn btn-primary btn-xs', 
			                      		'title' =>'Puebloss asociados a esta Circular')) !!}</td>
			   	

			    <td width="60">
			        {!! Html::link(url('secciones/edit', $seccion->id), \Lang::get('messages.edit'), array('class' => 'btn btn-success btn-xs')) !!}
			    </td>

			    <td width="60">
			        {!! Form::open(array('url' => array('secciones/destroy', $seccion->id), 'method' => 'DELETE')) !!}
			                          
			            <button class="btn btn-xs btn-danger" type="button" data-toggle="modal" data-target="#confirmDelete" data-title="" data-message="¿Estás segur@ de que quieres eliminar la Sección -{{ $seccion->title }}, se perderán todos los datos que de ésta dependan?">
        					<i class="glyphicon glyphicon-trash"></i>  Supr
    					</button>
			        {!! Form::close() !!}
			    </td>
			</tr>
		@endforeach
	</tbody>

</table>

        