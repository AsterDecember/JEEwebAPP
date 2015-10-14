<%-- 
    Document   : profeMateria
    Created on : 17/04/2015, 08:04:16 PM
    Author     : Lenovo
--%>

<%@page import="JavaBeans.ProfesorBean"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>

		<title>Profesor</title>
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
                <div class="row"> 
               

		<div class="col s10 container">
			<table class="centered striped">
				<thead>
					<tr>
						<th data-field="nrc">Id_Profesor</th>
						<th data-field="mat">NombreProfesor</th>
						<th data-field="prof">Apellido Paterno</th>
						<th data-field="cred">Apellido Materno</th>
						<th data-field="cred">ID Materia</th>
						<th data-field="cred">Nombre Materia</th>
					</tr>
				</thead>

				<tbody>
                                    <%
                                        LinkedList<ProfesorBean> pb= new LinkedList<ProfesorBean>();
                                        pb=(LinkedList<ProfesorBean>)(session.getAttribute("Array2"));
                                        String prueb=pb.get(1).getNombre();
                                        for (int i=0;i<pb.size();i++)
                                        {
                                            out.println("<tr>");
                                            out.println("<td>"+pb.get(i).getID_profesor()+"</td>");
                                            out.println("<td>"+pb.get(i).getNombre()+"</td>");
                                            out.println("<td>"+pb.get(i).getApellidoP()+"</td>");
                                            out.println("<td>"+pb.get(i).getApellidoM()+"</td>");
                                            out.println("<td>"+pb.get(i).getID_materia()+"</td>");
                                            out.println("<td>"+pb.get(i).getNombreM()+"</td>");
                                            
                                            out.println("</tr>");
                                        }
                                    %>
				</tbody>
			</table>
		</div>
                </div>

		<!-- Before body closing tag -->
		<script src="../js/jquery-2.1.3.js"></script>
		<link rel="stylesheet" href="../materialize/dist/js/materialize.css">
	</body>

</html>