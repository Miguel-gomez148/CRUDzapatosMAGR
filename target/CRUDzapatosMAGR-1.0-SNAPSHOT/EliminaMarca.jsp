<%-- 
    Document   : EliminaMarca
    Created on : 5/07/2020, 08:14:31 PM
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
        <title>Eliminando</title>
    </head>
    <body>
        <form>
            <%
                try {
                    int id = Integer.parseInt(request.getParameter("idMarca"));
                    MarcasDB branch = new MarcasDB();
                    branch.eliminarMarca(id);
            %>
            <h2 class="p-3 mb-2 bg-success text-white">Se ha eliminado correctamente la marca</h2>
            <a class="btn btn-info btn-lg" href="marcas.jsp" role="button">Volver al inicio</a>
            <%
            } catch (Exception e) {
                out.print(e.getMessage());
            %>
            <h2 class="p-3 mb-2 bg-danger text-white">No se ha eliminado correctamente la marca</h2>
            <a class="btn btn-info btn-lg"  href="index.jsp" role="button">Volver al inicio</a>
        </form>
    </body>
</html> 
<%}%>

