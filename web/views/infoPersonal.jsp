
<%@page import="JavaBeans.AlumnoBean"%>
<%-- 
    Document   : cursos
    Created on : 11/04/2015, 02:29:59 PM
    Author     : Lenovo
--%>

<%@page import="JavaBeans.CursoBean"%>
<%@page import="java.util.LinkedList"%>
<%@page import="JavaBeans.ProfesorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>

		<title>InformacionAlumno</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
		<!-- Head -->
		<link rel="stylesheet" href="../materialize/dist/css/materialize.css">
		<link rel="stylesheet" type="text/css" href="../css/alumnos.css">
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
	</head>

	<body>

		<nav>
			<div class="nav-wrapper">
				<a href="#" class="brand-logo center">Facultad de Ciencias de la Computacion</a>
                                <div>
                                    <a href="../inicio.jsp"><img src="../Imagenes/escudoNegativo1.png" class="escudo"></a>
                                </div> 
			</div>
		</nav>


		<div class="container">
			<table class="centered striped">
				<thead>
					<tr>
						<th>Matricula</th>
						<th>Nombre</th>
						<th>ApellidoP</th>
						<th>ApellidoM</th>
						<th>Calle</th>
						<th>Colonia</th>
						<th>Email</th>
						<th>NumeroExt</th>
					</tr>
				</thead>

				<tbody>
                                    <%
                                        AlumnoBean ab = new AlumnoBean();
                                        ab=(AlumnoBean)(session.getAttribute("authMSG"));
                                        
                                            out.println("<tr>");
                                            out.println("<td>"+ab.getMatricula()+"</td>");
                                            out.println("<td>"+ab.getNombre()+"</td>");
                                            out.println("<td>"+ab.getApellidoP()+"</td>");
                                            out.println("<td>"+ab.getApellidoM()+"</td>");
                                            out.println("<td>"+ab.getCalle()+"</td>");
                                            out.println("<td>"+ab.getColonia()+"</td>");
                                            out.println("<td>"+ab.getEmail()+"</td>");
                                            out.println("<td>"+ab.getNumeroExt()+"</td>");
                                            out.println("</tr>");
                                        
                                    %>
				</tbody>
			</table>
		</div>

		<!-- Before body closing tag -->
		<script src="../js/jquery-2.1.3.js"></script>
		<link rel="stylesheet" href="../materialize/dist/js/materialize.css">
	</body>

</html>

