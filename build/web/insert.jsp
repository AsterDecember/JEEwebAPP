<%-- 
    Document   : insert
    Created on : 6/09/2014, 01:13:33 PM
    Author     : aster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello huskies Insert!</h1>
        <form action="Insert" method="post">
        <table>
            <tr>
                <td><label>Usuario</label></td>
                <td><input type="text" name="user" id="user"/></td>
            </tr>
            <tr>
                <td><label>Password</label></td>
                <td><input type="text" name="pass" id="pass"/></td>
            </tr>
            <tr>
                <td><label>Login</label></td>
                <td><input type="submit" name="login"/></td>
            </tr>
        </table>
        </form>
    </body>
</html>
