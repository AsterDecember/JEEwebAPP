<%-- 
    Document   : alumnos
    Created on : 11/04/2015, 01:34:52 PM
    Author     : Gerardo
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="JavaBeans.ProfesorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>

		<title>Alumnos</title>
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
                 <div class="col s2 collection" >
                    <a href="#!" class="collection-header   ">Mostrar</a>
                    <a href="../ProfesorMateria" class="collection-item brue-text">ProfesorMateria</a>

                </div>

		<div class="container col s10">
			<table class="centered striped">
				<thead>
					<tr>
						<th data-field="nrc">Id_Profesor</th>
						<th data-field="mat">Nombre</th>
						<th data-field="prof">Apellido Paterno</th>
						<th data-field="cred">Apellido Materno</th>
                                                <th>Tipo</th>
                                                <th>No. Cursos</th>
					</tr>
				</thead>

				<tbody>
                                    <%
                                        LinkedList<ProfesorBean> pb= new LinkedList<ProfesorBean>();
                                        pb=(LinkedList<ProfesorBean>)(session.getAttribute("Array"));
                                        String prueb=pb.get(1).getNombre();
                                        for (int i=0;i<pb.size();i++)
                                        {
                                            out.println("<tr>");
                                            out.println("<td>"+pb.get(i).getID_profesor()+"</td>");
                                            out.println("<td>"+pb.get(i).getNombre()+"</td>");
                                            out.println("<td>"+pb.get(i).getApellidoP()+"</td>");
                                            out.println("<td>"+pb.get(i).getApellidoM()+"</td>");
                                            out.println("<td>"+pb.get(i).getTipo()+"</td>");
                                            out.println("<td>"+pb.get(i).getNum_cursos()+"</td>");
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
