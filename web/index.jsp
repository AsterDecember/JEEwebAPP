<%-- 
    Document   : index
    Created on : 11/04/2015, 12:21:44 PM
    Author     : Gerardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>Inicio</title>
                
		<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
		
		<link rel="stylesheet" type="text/css" href="css/inicio.css">
		
	</head>

	<body>


		<div class="container-fluid">

			<div class="row">	
				<nav class="navbar navbar-inverse navbar-fixed-top">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navInicio">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">BUAP</a>
						</div>

						<div class="collapse navbar-collapse" id="navInicio">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Inicio</a></li>
								<li><a href="views/login.jsp">Autoservicios</a></li>
								<li><a href="#">Academicos</a></li>
							</ul>
						</div>	
					</div>
				</nav>
			</div>







<!-- Fin NavBar-------------------------------------------------------------------------------------->
<!--Carousel ......................................................................................-->

		<div class="row">


		<div id="myCarousel" class="carousel slide" data-ride="carousel">
	      <!-- Indicators -->
			<ol class="carousel-indicators">
		        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		        <li data-target="#myCarousel" data-slide-to="1"></li>
		        <li data-target="#myCarousel" data-slide-to="2"></li>
	      	</ol>
	      	<div class="carousel-inner" role="listbox">
		        <div class="item active">
		          <img class="first-slide" src="Imagenes/Escudo.png" alt="First slide">
		          <div class="container">
		            <div class="carousel-caption">
		              <h1>MongoDB</h1>
		              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
		              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
		            </div>
		          </div>
		        </div>
		        <div class="item">
		          <img class="second-slide" src="Imagenes/Escudo2.png" alt="Second slide">
		          <div class="container">
		            <div class="carousel-caption">
		              <h1>Ruby on Rails</h1>
		              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
		              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
		            </div>
		          </div>
		        </div>
		        <div class="item">
		          <img class="third-slide" src="Imagenes/Escudo3.png" alt="Third slide">
		          <div class="container">
		            <div class="carousel-caption">
		              <h1>Ionic JS</h1>
		              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
		              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
		            </div>
		          </div>
		        </div>
	      	</div>
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		        <span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		        <span class="sr-only">Next</span>
			</a>
    	</div><!-- /.carousel -->

    	</div>

    	<div class="container marketing">
    		<div class="row featurette">
    			<div class="col-md-5 col-xs-5 col-sm-5">
    				<img class="img-responsive featurette-image center-block" src="Imagenes\escudoNegro.png">
    			</div>

    			<div class="col-md-7 col-xs-7 col-sm-7">
    				<h2 class="featurette-heading">Direccion Academica</h2>
    				<p class="lead">Informacion de la Buap
    			</div>
    		</div>

    		<hr class="featurette-divider">

    		<div class="row	margen featurette">
    			<div class="col-md-7 col-xs-4 col-sm-4">
    				<h2 class="featurette-heading">Paginas WEB</h2>
                                <p class="lead"><a href="https://www.facebook.com/FCCsecretariaacademica?fref=ts">FACEBOOK SecretariaAcademica</a>
                                    
    			</div>
    			<div class="col-md-5 col-xs-5 col-sm-5">
    				<img class="featurette-image img-responsive center-block" src="Imagenes\escudoNegro.png">
    			</div>

    		</div>
    	</div>


    	</div>
            <script type="text/javascript" src="js/jquery-2.1.3.js"></script>
            <script src="bootstrap/js/bootstrap.js"></script>
	</body>
</html>




<!--

-->