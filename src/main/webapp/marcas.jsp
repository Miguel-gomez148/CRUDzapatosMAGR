<%-- 
    Document   : marcas
    Created on : 3/06/2020, 06:39:58 PM
    Author     : Pc
--%>
<%@page import="java.util.*"%>
<%@page import="Doc.Marcas"%>
<%@page import="Doc.MarcasDB"%>
<%@page import="config.Conexion"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Marcas> branch = new MarcasDB().ListadoMarcas();
%>
<form action="index.jsp">
    <h1 style="text-align:left" class="p-3 mb-2 bg-info text-white bg-gradient-info"><p style="text-align:right">Nuestras Marcas</p><input class="btn btn-info btn-lg" type="submit" name="mostrar" value="Volver al inicio"></h1>
    <div style="text-align:center">
        <table style="margin: 0 auto;" class="table table-hover table-striped">
            <tr class="thead-dark">
                <td><a style="text-align: center" class="btn btn-outline-dark btn-block btn-lg active" href="formularioMarca.jsp" role="button">Agregar una marca</a></td>
            </tr>
            <tr  class="thead-dark">
                <th>ID</th>
                <th>Marca</th>
                <th scope="col" colspan="3"></th>
            </tr>
            <%for (Marcas marca : branch) {%>
            <tr>
                <td><%= marca.getIdMarca()%></td>                    
                <td><%= marca.getMarca()%></td>
                <td> 
                    <a class="btn btn-outline-secondary btn-sm active"  href="formularioEditaMarca.jsp?id=<%= marca.getIdMarca()%>">Editar marca</a>
                    <a class="btn btn-warning btn-sm" href="formularioEliminaMarca.jsp?id=<%= marca.getIdMarca()%>">Eliminar marca</a>
                    <a class="btn btn-danger btn-sm" href="EliminaMarca2.jsp?id=<%= marca.getIdMarca()%>">Eliminar marca v2</a>
                </td>
            </tr>
            <%}%>
        </table>
    </div>  
</form>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Marcas</title>
    </head>
    <body>

    </body>
</html>
