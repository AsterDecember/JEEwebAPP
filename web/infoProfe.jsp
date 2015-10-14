<%-- 
    Document   : infoProfe
    Created on : 11/04/2015, 09:34:30 AM
    Author     : Lenovo
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="JavaBeans.ProfesorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1">
<tr>
<td>ID Profesor</td>
<td>Nombre</td>
<td>Apellido Paterno</td>
<td>Apellido Materno</td>
<td>Tipo</td>
<td>Numero de Cursos</td>
</tr>
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
</table>
<input type="button" value="volver" onclick="location='http://localhost:8084/class2/inicio.jsp'">
    </body>
</html>
