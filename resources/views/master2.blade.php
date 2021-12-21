<html>
    <head>
        {!! Html::script('js/jquery-2.1.4.min.js') !!}      
        {!! Html::script('js/bootstrap.min.js') !!}
        {!! Html::script('js/site.js') !!}
        
            {!! Html::style('css/bootstrap.min.css') !!}  
            {!! Html::style('css/style.css') !!}
            {!! Html::style('css/styles.css') !!}
            {!! Html::style('css/font-awesome.css') !!}

        
    </head>
    <body>


        <div class="container">
                <div class="col-md-12">
                    @yield('content')
                </div>
            

        </div>
        
    </body>
</html>
