<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.Math"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>              
        <%!
            public class Calendar{

                public int WeekDay(int d){
                    int WD = year + d + 3 * (month - 1) - 1;
                    
                    if(month < 3) year--;
                    else WD -= Math.round(0.4 * month + 2.3);
                    
                    WD += Math.round(year /4) - Math.round((year / 100 + 1) * 0.75) + 1;
                    
                    WD %= 7;
                                        
                    return WD+1;
                }
            }
            
        %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendar</title>
    </head>
    <body>
        <h1>Insert month and year to find:</h1>
        
        <form action="" method="get">
            <input type="text" name="x1" placeholder="Here the month:"/>
            <input type="text" name="x2" placeholder="Here the year:"/>
            <input type="submit" value="ok"/>
        </form>
        
        <%!
            public int month, year;            
        %>
        <%
            String x1, x2;
            int [] sizMon = new int []{31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
                    
            x1 = request.getParameter("x1");
            x2 = request.getParameter("x2");
            
            try{
                month = Integer.valueOf(x1);
                year = Integer.valueOf(x2);
                
                out.println("Sun | Mon | Tue | Wed | Thu | Fri | Sat");%><br><%
                
                if(((year %4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) sizMon[1] = 29;
                
                for (int i = 1; i <= new Calendar().WeekDay(1); i++)%>&emsp;&emsp;<%
                    for (int day = 1; day <= sizMon[month-1]; day++){
                        if(day < 10){%>&nbsp;<% out.print("0" + day);}
                        else{ %> &nbsp; <% out.print(day);}
                        
                        if(new Calendar().WeekDay(day) == 7)%><br><%
                    }
                
            }catch(NumberFormatException e){
                out.println("");
            }
        %>
        
       
    </body>
</html>