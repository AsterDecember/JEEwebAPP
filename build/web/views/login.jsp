<%-- 
    Document   : login
    Created on : 11/04/2015, 12:41:10 PM
    Author     : Gerardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>Login</title>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

                <!-- Optional theme -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
                <link rel="stylesheet" type="text/css" href="../css/margenes.css">

                <!-- Latest compiled and minified JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
                <script src="js/jquery-2.1.3.js"></script>
	</head>

	<body>

		<div class="jumbotron">
            <div class="container">
                <img src="../Imagenes/escudoEtiqueta.png">
            </div>
		</div>

		

            <div class="col-md-6 col-md-offset-3" aling="center">
                        <form action="../Validar" method="post" aling="center"> 
                            <div class="container">
                            	<div class="row">
									<form class="form-horizontal">
                                    		<div class="col-md-8">

                                                    <div class="form-group ">
                                                            <label for="inMatricula" class="col-sm-2 control-label">Matricula</label>
                                                            <div class="col-sm-10">
                                                            <input type="text" class="form-control" id="matricula" name="matricula" placeholder="Matricula">
                                                    		</div>
                                                    </div>
                                                <div>
                                                    <p><br>
                                                </div>

                                                    <div class="form-group">
                                                        <label for="inputPass" class="col-sm-2 control-label">Password</label>
                                                        <div class="col-sm-10">
                                                          <input type="password" class="form-control" name="pass" id="pass" placeholder="Password">
                                                        </div>
                                                     </div>
                                    		</div>

                                    		<div class="col-md-4">
                                    			<input type="submit" class="btn btn-default" name="login"/>
                                    			<div class="row">
                                    				<div class="col-sm-1">
                                    					<br>
                                    					<!--<a onclick="llenaFormulario()">Registrarse</a>-->
                                    				</div>
                                    			</div>
                                    		</div>
					</form>
                            	</div>
                            </div>
                        </form>

            </div>
	</body>
</html>