<%-- 
    Document   : fibonacci
    Created on : 16 de abr. de 2024, 14:32:22
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fibonacci</title>
    </head>
    <body>
        <form action="" method="get">
            <input type="number" name="n" placeholder="Insira um número"/>
            <input type="submit" value="ok"/>
        </form>       
        <%
               int n, n1 = 0, n2 = 1, n3;
 
            try {
             n = Integer.valueOf(request.getParameter("n"));
             int n1 = 0, n2 = 1;
             
             
               if(n == 1 || n == 2)
                    out.println(1);
                   
                for(int i = 1; i < n; i++){
                    if(n1 == 0)
                        out.println(1);
                        
                    n3 = n1 + n2;
                    n1 = n2;
                    n2 = n3;
                    
                    out.println(num2);
                }
            
            
            }catch (NullPointerException e){
            out.print(".");
            }catch (NumberFormatException e){
            out.print(".");
            } 
        %>
<h3><a href='index.jsp'> Voltar</a></h3>
    </body>
</html>
