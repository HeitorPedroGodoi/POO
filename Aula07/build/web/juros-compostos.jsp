<%-- 
    Document   : juros-composto
    Created on : 2 de abr. de 2024, 14:41:20
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.Math"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Composto</title>
    </head>
    <body>
        <h1>Juros Composto!</h1>
        <p>*lembre-se que a taxa de juros e o tempo tem que estar na mesma escala de tempo  </p>
        <form action="" method="get">
            <input type="number" name="c" placeholder="Insira o capital"/>
            <input type="number" name="j" placeholder="Insira o juros %"/>
            <input type="number" name="t" placeholder="Insira a duração do juros"/>
            <input type="submit" value="calcular"/>
        </form>
       <%
           double c,j,t, resultado, x;
           
           try {
            c = Double.valueOf(request.getParameter("c"));
            j = Double.valueOf(request.getParameter("j"));
            t = Double.valueOf(request.getParameter("t"));
            
            out.println(String.format("Seu Capital Incial foi de R$ %.2f", c));   
            out.print("<br> Seu juros foi de " +j+ "% ao ano/mes <br> e seu tempo foi de "+ t+ " mês(ses)/ano" );
           %>
           <table border='1'>
           <tr>
           <th>Mês</th> 
           <th>Montante</th>
           </tr>
           <tr>
           <%
            j = j / 100;
            for (int i = 0; i <= t; i++)
            {
            resultado = c * Math.pow(( 1 + j), i);
             
            out.println("<th> " + i+ "º </th>" );
            
            if (i == 0){
            out.println(String.format("<th>R$ %.2f" ,c, "</th>")); 
           }else{
            out.println(String.format("<th>R$ %.2f" ,resultado, "</th>"));
           }
           <h3><a href='index.jsp'> Voltar</a></h3>
           %>
           </tr>
           <%
           
           
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
