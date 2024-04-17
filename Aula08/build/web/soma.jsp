<%-- 
    Document   : soma
    Created on : 16 de abr. de 2024, 14:17:16
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma de Gauss</title>
    </head>
    <body>
        <h2> Soma de Gaus</h2>
        <form action="" method="get">
            <input type="number" name="n" placeholder="Insira um número"/>
            <input type="submit" value="ok"/>
        </form>
       <%
         int n;
 
            try {
            n = Integer.valueOf(request.getParameter("n"));
            
            int g,resultado;
            g = n /2;
            
            resultado = g * (n+1);
            
            out.println("A soma de todos os númerors entre 1 e "+n+ " é " +resultado); 
            
             }catch (NullPointerException e){
             out.print(".");
             }catch (NumberFormatException e){
             out.print(".");
             }  
           
           
        %>
        <h3><a href='index.jsp'> Voltar</a></h3>
    </body>
</html>
