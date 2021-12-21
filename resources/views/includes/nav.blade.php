<nav class="navbar navbar-default" id="menu-nav">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
          @if (Auth::check())
              <li><a href="{{ url('users/logout') }}">@lang('messages.logout')</a></li>
           @else
           <li><a href="{{ url('users/login') }}">@lang('messages.login')</a></li>
          @endif
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<h3 class="conlist" align="center"> {{ trans('messages.conlist') }} </h3>






