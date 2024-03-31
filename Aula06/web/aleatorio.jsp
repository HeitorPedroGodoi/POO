
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
             double n;
           
            n = Double.parseDouble(request.getParameter("n"));

           for (int i=0; i<n; i++)
           {
              
            int b = ((int)(60*Math.random()));
            
            if (b != 0){
               out.println("Seu número da loteria: " + b); 
               out.println("<br>"); 
            }
            
           }
    %> 
        <h3><a href='index.jsp'> Voltar</a></h3>
    </body>
</html>
