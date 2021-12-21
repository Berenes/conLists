<nav class="navbar navbar-default sidebar metodos" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
		    <span class="sr-only">Toggle navigation</span>
		    <span class="icon-bar"></span>
		    <span class="icon-bar"></span>
		    <span class="icon-bar"></span>
		  </button>
		</div>
		<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">

			<ul class="nav navbar-nav">

				<li class="active"><a href="{{ url('dashboard') }}">Inicio <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>


				<li class="dropdown">
			        <a href="#" class="dropdown-toggle" data-toggle="dropdown">@lang('messages.list') <span class="caret"></span> <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-list-alt"></span></a>
			        <ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="{{ url('unidades/all') }}">@lang('messages.unidad_list')</a></li>

			        </ul>
			    </li>



				<li class="dropdown">
			        <a href="#" class="dropdown-toggle" data-toggle="dropdown">@lang('messages.create') <span class="caret"></span> <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-stats"></span></a>
			        <ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="{{ url('unidades/register') }}">@lang('messages.create_unidad')</a></li>
						<li><a href="{{ url('secciones/register') }}">@lang('messages.create_section')</a></li>
						<li><a href="{{ url('pueblos/register') }}">@lang('messages.create_town')</a></li>
						<li><a href="{{ url('usuarios/register') }}">@lang('messages.create_neighbor')</a></li>

			        </ul>
			    </li>


				<li class="dropdown">
			        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Buscar <span class="caret "></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-search"></span></a>
			        <ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="{{  url('usuarios/vecsearch') }}">Buscar vecino</a></li>
			        </ul>
			    </li>


				<li class="dropdown">
			        <a href="#" class="dropdown-toggle" data-toggle="dropdown">@lang('messages.cuadro_de_clasificacion') <span class="caret"></span> <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-indent-left"></span></a>
			        <ul class="dropdown-menu forAnimate" role="menu">

						<li><a href="{{ url('cuadro_de_clasificaciones/register') }}">@lang('messages.new_clasificacion')</a></li>

						<li><a href="{{ url('cuadro_de_clasificaciones/subiricono') }}">@lang('messages.upload_icono')</a></li>


			        </ul>
			    </li>


			</ul>
		</div>
	</div>
</nav>
