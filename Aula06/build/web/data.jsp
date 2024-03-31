<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP DATA</title>
    </head>
    <body>
        <h3>A data e hora é:</h3>
        <div>
        <%= 
          
            new java.util.Date() 
        
        %>
        </div>
        <h3><a href='index.jsp'> Voltar</a></h3>
    </body>
</html>
