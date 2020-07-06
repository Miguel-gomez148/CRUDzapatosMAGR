<%-- 
    Document   : EliminaRegistro2
    Created on : 5/07/2020, 07:13:25 PM
    Author     : Pc
--%>

<%@page import="Doc.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Eliminando...</title>
    </head>
    <body>
        <form>
        <%  
            int idZapato = Integer.parseInt(request.getParameter("id"));
            ZapatosDB shoes = new ZapatosDB();
            shoes.eliminarRegistro(idZapato);
            response.sendRedirect("index.jsp");%>
   </form>
    </body>
</html> 
