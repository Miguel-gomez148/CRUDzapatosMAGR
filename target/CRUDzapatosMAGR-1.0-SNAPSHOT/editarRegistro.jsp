<%-- 
    Document   : editarRegistro
    Created on : 5/07/2020, 04:25:37 PM
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
        <title>Actualizar usuario</title>
    </head>
    <body>
        <form>
            <%
                try {
                    int id = Integer.parseInt(request.getParameter("idZapato"));
                    ZapatosDB shoes = new ZapatosDB();
                    shoes.editaZapato(Integer.parseInt(request.getParameter("marca")), request.getParameter("color"), request.getParameter("modelo"), Float.parseFloat(request.getParameter("precio")), request.getParameter("tipo"), id);%>
            <h2 class="p-3 mb-2 bg-success text-white">Se ha editado correctamente el nuevo registro</h2>
            <a class="btn btn-info btn-lg" href="index.jsp" role="button">Volver al inicio</a>
            <%
            } catch (Exception e) {
                out.print(e.getMessage());
            %>
            <h2 class="p-3 mb-2 bg-danger text-white">No se ha realizado correctamente el nuevo registro</h2>
            <a class="btn btn-info btn-lg"  href="index.jsp" role="button">Volver al inicio</a>
        </form>
    </body>
</html>
<%}%>