<%
    if(session.getAttribute("usuario") !=null){
        response.sendRedirect(("bienvenido.jsp"));
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <form action="procesar" method="POST">
                <div class="container">
                    <h1>Login</h1>
                    <div class="row">
                        <div class="col-md-8">
                            <label>Username:</label>
                            <input type="text" class="form-control" name="user" id="user">                    
                        </div>
                    </div>    
                    <div class="row">
                    <div class="col-md-8">
                        <label>Password:</label>
                        <input type="password" class="form-control" name="pass" id="pass">                        
                    </div>
                </div>
                <hr>
                <button type="submit" class="btn btn-primary">Enviar</button>               
            </div>     
            
            </form>
            <% if(session.getAttribute("error") !=null){ %>
                <div class="alert alert-danger" role="alert">
                    <%= session.getAttribute("error")%>
                </div> 
            <%}%>    
        </div>
        
        
        
        
    </body>
</html>
