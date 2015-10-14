<%-- 
    Document   : buscarNRC
    Created on : 11/04/2015, 02:37:41 PM
    Author     : Lenovo
--%>

<%@page import="JavaBeans.NrcBean"%>
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


		<div class="container">
			<table class="centered striped">
				<thead>
					<tr>
						<th data-field="nrc">NRC</th>
						<th data-field="mat">Id_Profesor</th>
						<th data-field="prof">Matricula</th>
						<th data-field="cred">Id_Materia</th>
					</tr>
				</thead>

				<tbody>
                                    <% 
                                        NrcBean IBean= new NrcBean();

                                        IBean = (NrcBean)(session.getAttribute("servletMsg"));

                                        //String nrc= (String)(session.getAttribute("serverNrc"));
                                        //System.out.println(nrc);
                                        int NRC;
                                        int ID_profesor;
                                        int Matricula;
                                        int ID_materia;

                                        NRC=IBean.getNRC();
                                        ID_profesor=IBean.getID_profesor();
                                        Matricula=IBean.getMatricula();
                                        ID_materia=IBean.getID_materia();
                                        
                                         out.println("<tr>");
                                         out.println("<td>"+NRC+"</td>");
                                         out.println("<td>"+ID_profesor+"</td>");
                                         out.println("<td>"+Matricula+"</td>");
                                         out.println("<td>"+ID_materia+"</td>");
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

