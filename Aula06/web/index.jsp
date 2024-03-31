<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Index JSP</title>
    </head>
    <body>
     
        <h1>Tarefas Aula 6</h1>
        <h2><a href="calendar.jsp">Exemplo</a> </h2>
        <h2><a href="data.jsp">Data</a> </h2>
        
        <h2> Soma</h2>
        <form action="soma.jsp" method="get">
            <input type="number" name="x" placeholder="Digite um número"/> +
            <input type="number" name="y" placeholder="Digite um número" /> 
            <input type="submit" name="enviar" value="Calcular"/>
        </form>
        
        <h2> Aleatorio</h2>
        <form action="aleatorio.jsp" method="get">
            <input type="number" name="n"  placeholder="Número de repetições"/> 
            <input type="submit" name="enviar" value="Aleatorizar"/>
        </form>      
        
        <h2> Tabuada</h2>
        <form action="tabuada.jsp" method="get">
            <input type="number" name="x" placeholder="Digite o limite"/> e 
            <input type="number" name="y" placeholder="Digite o multiplicador" /> 
            <input type="submit" name="enviar" value="Tabuar"/>
        </form>  
        
        
        <h2> Calendário </h2>
        <form action="calendario.jsp" method="get">
            <input type="number" name="mes" placeholder="Digite o mês"/> e
            <input type="number" name="ano" placeholder="Digite o Ano" /> 
            <input type="submit" name="enviar" value="Calcular"/>
        </form>  
        
    </body>
</html>
