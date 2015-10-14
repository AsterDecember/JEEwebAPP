<%-- 
    Document   : delete
    Created on : 13-sep-2014, 11:52:27
    Author     : hackro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="class2.model.Querys"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYP  OWO E html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/script.js"></script>
    </head>
    <body>
        <h1>Hello World!</h1>
       
        <%Querys q = new Querys();%>
        <%ResultSet rs = q.getalldates(); %>
        
        <form action ="Refresh" method="post">
        
        <select name="usuarios" id="usuarios">
            <%while(rs.next()){%>
            <%-- Este es un comentario--%>
            <option name="usuario" id ="usuario"  onclick="automatic()" value= <%rs.getString("id_empleado"); %>  > <%= rs.getString("usuario") %> </option>
            
            <%}%>
        </select>
        <!--input type="submit" name="Refresh" id="Refresh" value="Refresh"/> -->
        
        </form>
        <div id="table"></div>
        
        
        
        
        
    </body>
</html>
