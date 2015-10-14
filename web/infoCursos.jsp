<%-- 
    Document   : infoCursos
    Created on : 11/04/2015, 12:02:12 PM
    Author     : Lenovo
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="JavaBeans.CursoBean"%>
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
<td>NRC</td>
<td>ID_materia</td>
<td>Matricula</td>
<td>ID_profesor</td>

</tr>
<%
    LinkedList<CursoBean> pb= new LinkedList<CursoBean>();
    pb=(LinkedList<CursoBean>)(session.getAttribute("Array"));
for (int i=0;i<pb.size();i++)
{
   out.println("<tr>");
   out.println("<td>"+pb.get(i).getNRC()+"</td>");
   out.println("<td>"+pb.get(i).getID_materia()+"</td>");
   out.println("<td>"+pb.get(i).getMatricula()+"</td>");
   out.println("<td>"+pb.get(i).getID_profesor()+"</td>");
  
   out.println("</tr>");
}
%>
</table>
<input type="button" value="volver" onclick="location='http://localhost:8084/class2/inicio.jsp'">
    </body>
</html>