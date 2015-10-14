
<!DOCTYPE html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Bienvenido</title>
        
      <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

      <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
      <link rel="stylesheet" type="text/css" href="css/inicioAlumnos.css">
		  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    </head>



    <body>
      <div class="container-fluid">


        <div class="row">
          <div class="jumbotron">
                <div class="container">
                    <img src="Imagenes/Escudo.png" class="img-responsive">
                </div>
          </div>
        </div>




          <div class="row">
            <nav class="navbar navbar-inverse navbar-fixed-top navposition">
              <div class="container-fluid">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="views/infoPersonal.jsp">Informacion</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav">
                    <li><a href="Curso">Cursos <span class="sr-only">(current)</span></a></li>
                    <li><a href="Profesor">Profesores</a></li>
                    
                  </ul>
                  <form action="BuscarNRC" method="post" class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                      <input type="text" class="form-control" id="nrc" name="nrc" placeholder="NRC">
                    </div>
                    <button type="submit" class="btn btn-default">Buscar</button>
                  </form>
                  <ul class="nav navbar-nav navbar-right">
                    <li><a href="Logout">Logout</a></li>
                    
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
            </nav>
          </div>

       

      </div>
        <!--<a href="inicio.jsp"><img src="Imagenes/escudoNegativo1.png" class="escudo"></a>-->


        <script type="text/javascript" src="js/jquery-2.1.3.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    </body>
</html>




<!--
codigo css de inicioAlumnos.css
.jumbotron{
	background-color: #123C5D;
}

body{
	background-color: #eceff1;
}

-->