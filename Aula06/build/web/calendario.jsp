<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="java.lang.Math"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <%--
    
           void ImprimeCalendario(){
        
           cout <<"DOM\tSEG\tTER\tQUA\tQUI\tSEX\tSAB\n\n"; 
           short TamanhoDoMes[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}; 

           if (Bissexto() == true){ 
                                 
               TamanhoDoMes[1] = 29; 
           }  

               for(int j = 1; j < DiaDaSemana(1); j++) cout <<'\t'; 

                   for(int dia = 1; dia <= TamanhoDoMes[mes - 1]; dia++){ 

                   if(dia < 10) cout << '0' <<dia <<'\t'; 

                   else cout <<dia <<'\t'; 

                       if(DiaDaSemana(dia) == 7) cout <<endl; 

               } 

       }
    
       }
       ;
        --%> 
        <%
            int mes, ano;
               mes = Integer.parseInt(request.getParameter("mes"));
               ano = Integer.parseInt(request.getParameter("ano"));
               
               int TamanhoDoMes[] = new int [] {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}; 
          
                if( ( (ano % 4 == 0) && (ano % 100 != 0) ) || (ano % 400 == 0) ) {
                TamanhoDoMes[1] = 29; 
        
            }%>
    <center><h1>
            <% 
                switch (mes){
                case 1:
                    out.println("Janeiro de " + ano );
                break;
                case 2:
                    out.println("Fevereiro de " + ano );
                break;
                case 3:
                    out.println("Março de " + ano );
                break;
                case 4:
                    out.println("Abril de " + ano );
                break;
                case 5:
                    out.println("Maio de " + ano );
                break;
                case 6:
                    out.println("Junho de " + ano );
                break;
                case 7:
                    out.println("Julho de " + ano );
                break;
                case 8:
                    out.println("Agosto de " + ano );
                break;
                case 9:
                    out.println("Setembro de " + ano );
                break;
                case 10:
                    out.println("Outubro de " + ano );
                break;
                case 11:
                    out.println("Novembro de " + ano );
                break;
                case 12:
                    out.println("Dezembro de " + ano );
                break;
                default:
                     out.println("<h2><a href='index.jsp'>Opção Inválida, digite novamente... </a></h2>" );
            }%>
        </h1></center>
        <%
        int dia=1, f;s
         f = ano + dia + 3 * (mes - 1) - 1; 

            if (mes < 3){
                ano--;
            } 
            else {
                f -= Math.round(0.4 * mes + 2.3);
            } 
    
            f += Math.round(ano / 4) - Math.round((ano / 100 + 1) * 0.75); 
    
            f %= 7; 
            
            f += 1;
        %>
    <table border='1'>
        <tr>
            <th>Domingo</th> 
            <th>Segunda</th>
            <th>Terça</th>
            <th>Quarta</th>
            <th>Quinta</th>
            <th>Sexta</th>
            <th>Sabádo</th>
        </tr>
        
        <%
         for(int j = 1; j < TamanhoDoMes[mes]; j++) 
         {
             out.println("\t);
        } 

                   for(int dia = 1; dia <= TamanhoDoMes[mes - 1]; dia++)
                   { 

                   if(dia < 10)
                   {
                   out.println("0 " +dia+  "\t");
                   } 
                   else{
                   out.println(+dia+ "\t");
                   }    

                       if(DiaDaSemana(dia) == 7)  out.println(" "); 
            %>          
            </table>  
</body>
</html>
