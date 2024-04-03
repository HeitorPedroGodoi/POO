<%-- 
    Document   : juros-simples
    Created on : 2 de abr. de 2024, 14:02:08
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Simples</title>
    </head>
    <body>
        <h1>Juros Simples!</h1>
        <p>*lembre-se que a taxa de juros e o tempo tem que estar na mesma escala de tempo  </p>
        <form action="" method="get">
            <input type="number" name="c" placeholder="Insira o capital"/>
            <input type="number" name="j" placeholder="Insira o juros %"/>
            <input type="number" name="t" placeholder="Insira a duração do juros"/>
            <input type="submit" value="calcular"/>
        </form>
        
       
         <%
         
           double c,j,t, resultado, m;
 
            try {
            c = Double.valueOf(request.getParameter("c"));
            j = Double.valueOf(request.getParameter("j"));
            t = Double.valueOf(request.getParameter("t"));
            resultado = (c * ( j / 100) * t);
            m = c + resultado;
            out.println(String.format("Seu Capital Incial foi de R$ %.2f", c)); 
            out.println(String.format("<br>Seu montante total de juros simples é R$ %.2f" , m));  
            
            out.print("<br> Seu juros foi de " +j+ "% ao ano/mes <br> e seu tempo foi de "+ t+ " mês(ses)/ano" );
       
             }catch (NullPointerException e){
             out.print(".");
             }catch (NumberFormatException e){
             out.print(".");
             }

       %>
       <h3><a href='index.jsp'> Voltar</a></h3>
    </body>
</html>

