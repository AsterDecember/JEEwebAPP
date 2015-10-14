<%-- 
    Document   : delet
    Created on : 13/09/2014, 11:44:15 AM
    Author     : aster
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="class2.model.Querys"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Huskies! Delete</h1>
        <%Querys q = new Querys();%>
        <%ResultSet rs = q.getallUsers();%>
        
        <form action="Delet" method="post">
        
        <select name="usuarios">
            <%while(rs.next()){%>
            <option name="usuario" id="usuario" value=<%= rs.getString("id_empleado")%>> <%= rs.getString("usuario")%> </option>
            <%}%>
        </select>
        <input type="submit" name="Eliminar" id="Eliminar" value="Eliminar"/>
        </form>
        
    </body>
</html>
