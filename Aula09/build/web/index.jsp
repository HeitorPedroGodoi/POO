<%-- 
    Document   : index
    Created on : 27 de abr. de 2024, 19:14:45
    Author     : heito
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Página Inicial</title>
        <script src="//unpkg.com/alpinejs" defer></script>
    </head>
    <body>
        <h1>Bom dia!!!</h1>
        <p id="sub1">Texto a ser substituido 1</p>
        <p id="sub2">Texto a ser substituido 2</p>

        <script>
            let file = "HeitorServlet.java/";
            fetch(file)
                    .then(x => x.text())
                    .then(y => document.getElementById("sub1").innerHTML = y);
        </script>   
        <%@ include file="WEB-INF/jspf/header.jspf" %>
    </body>
</html>
