<%-- 
    Document   : bienvenido
    Created on : 21/09/2019, 16:27:18
    Author     : EducaciónIT
--%>
<%
    //String usuario = session.getAttribute("usuario").toString();
    
    //Validamos las sesiones seteadas
    
    if (session.getAttribute("usuario") == null){
        session.setAttribute("error", "Primero debe loguearse");
        response.sendRedirect("login.jsp");
    } 

    Cookie [] cookies = request.getCookies(); //Me devuelve un array de cookies
    
    
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hola <%= session.getAttribute("usuario") %>!!!</h1>
        <a href="desloguin?accion=desloguin">Finalizar Sesion</a>        
    </body>
</html>
