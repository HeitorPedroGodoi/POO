<%-- 
    Document   : numero-primo
    Created on : 16 de abr. de 2024, 13:39:43
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Número Primo</title>
    </head>
    <body>
        <form action="" method="get">
            <input type="number" name="n" placeholder="Insira um número"/>
            <input type="submit" value="ok"/>
        </form>

        <%
            

           int n, incr = 0;                        
            
            try{
            num = Integer.valueOf(request.getParameter("num"));
            for(int i = 1; i <= n; i++){
                if(n % i == 0 && n != i && i != 1)
                    incr += 1;
            }
            if(incr == 0)
                 out.println("Número Primo!");  
            
            else if(incr != 0){
            out.println("Número não primo");
            %><br><%
            out.println("Seus Divisores:");
                for (int i = 1; i <= n; i++){
                    if (n % i == 0){
                        out.println(i);
                    }
                }
            }
            else if(incr != 0)
                 out.println();               
                
            
            
             }catch (NullPointerException e){
             out.print(".");
             }catch (NumberFormatException e){
             out.print(".");
             }
        %>
        <h3><a href='index.jsp'> Voltar</a></h3>
    </body>
</html>
