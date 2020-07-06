<%-- 
    Document   : agregarRegistro
    Created on : 4/07/2020, 05:02:07 PM
    Author     : Pc
--%>
<%@page import="java.util.*"%>
<%@page import="Doc.Zapatos"%>
<%@page import="Doc.ZapatosDB"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <%
                try {
                    ZapatosDB shoes = new ZapatosDB();
                    float precio = Float.parseFloat(request.getParameter("precio"));
                    int marca = Integer.parseInt(request.getParameter("marca")), zapato = 0;
                    String color = request.getParameter("color"), modelo = request.getParameter("modelo"), tipo = request.getParameter("tipo");
        shoes.agregaZapato(zapato, marca, color, modelo, precio, tipo);%>
            <h2 class="p-3 mb-2 bg-success text-white">Se ha realizado correctamente el nuevo registro</h2>
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
