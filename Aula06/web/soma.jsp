<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP SOMA</title>
    </head>
    <body>  
        <% 
          double x,y, resultado;
  
            x = Double.parseDouble(request.getParameter("x"));
            y = Double.parseDouble(request.getParameter("y"));
            resultado = x + y;
    
    %> 
        <h1> Soma dos seus números é: </h1>
        <div>
        <%= resultado%>
        </div>
        <h3><a href='index.jsp'> Voltar</a></h3>
    </body>
</html>