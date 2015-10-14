<%-- 
    Document   : done
    Created on : 31/03/2015, 06:52:41 AM
    Author     : Lenovo
--%>

<%@page import="JavaBeans.NrcBean"%>
<%@page import="org.omg.PortableInterceptor.SYSTEM_EXCEPTION"%>
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
             
   
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <h1>Hello World!</h1>
        <form action="inicio.jsp" method="get">

            
            
            <input type="text" value=<%=NRC%> >
            <input type="text" value=<%=ID_profesor%> >
            <input type="text" value=<%=Matricula%>>
            <input type="text" value=<%=ID_materia%>>
            
            
            <button type="submit" class="btn btn-default">Volver</button>
        </form>
            
    </body>
</html>
