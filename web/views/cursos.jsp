<%-- 
    Document   : cursos
    Created on : 11/04/2015, 02:29:59 PM
    Author     : Lenovo
--%>

<%@page import="JavaBeans.ConsultaBean"%>
<%@page import="java.util.LinkedList"%>
<%@page import="JavaBeans.ProfesorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>

		<title>Cursos</title>
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

            <div class="row"> <!-- ese mesmo es el div principal ese merengez-->
                <div class="col s2 collection" >
                    <a href="#!" class="collection-header   ">Ordenar por</a>
                    <a href="../OrderBy" class="collection-item brue-text">NombreMateria</a>
                    <a href="../OrderByProfe" class="collection-item brue-text">NombreProfesor</a>

                </div>
                
		<div class="col s10" >
			<table class="centered striped">
				<thead>
					<tr>
						<th>NRC</th>
						<th>Id_Profesor</th>
                                                <th>NombreProfesor</th>
                                                <th>ApellidoProfesor</th>
                                                <th>Id_Materia</th>
						<th>NombreMateria</th>
						
					</tr>
				</thead>

				<tbody>
                                    <%
                                        LinkedList<ConsultaBean> pb= new LinkedList<ConsultaBean>();
                                        pb=(LinkedList<ConsultaBean>)(session.getAttribute("Array"));
                                        for (int i=0;i<pb.size();i++)
                                        {
                                            out.println("<tr>");
                                            out.println("<td>"+pb.get(i).getNRC()+"</td>");
                                            out.println("<td>"+pb.get(i).getID_profesor()+"</td>");
                                            out.println("<td>"+pb.get(i).getNombreP()+"</td>");
                                            out.println("<td>"+pb.get(i).getApellidoP()+"</td>");
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

