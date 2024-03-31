<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP SOMA</title>
    </head>
    <body>  
        <% 
          int x,y;
  
            x = Integer.parseInt(request.getParameter("x"));
            y = Integer.parseInt(request.getParameter("y"));
    
            out.println("<table border='1'>" );
            out.println("<tr>" );
            out.println("<th>Posição</th> <th>Tabuada do " + y +"</th>" );
            out.println("</tr>" );
            
           for (int i=1; i<=x; i++)
           {
            out.println("<tr>" );   
            out.println("<th> " + i+ " </th>" );
            out.println("<th>" + y + " * " + i + " = " + y * i + "</th>"); 
            out.println("</tr>" );
           }
           out.println("</table>" );         
        %>
        <h3><a href='index.jsp'> Voltar</a></h3>
    </body>
</html>