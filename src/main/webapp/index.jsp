<%-- 
    Document   : index
    Created on : 3/06/2020, 05:39:22 PM
    Author     : Pc
--%>
<%@page import="java.util.*"%>
<%@page import="Doc.*"%>
<%@page import="config.Conexion"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Zapatos> shoes = new ZapatosDB().ListadoZapatos();
%>
<form action="marcas.jsp">
    <h1 style="text-align:right" class="p-3 mb-2 bg-info text-white bg-gradient-info"><p style="text-align:left">Crazy Feet</p><input class="btn btn-info btn-lg" type="submit" id="ir" name="mostrar" value="Ver marcas"></h1>
        <div style="text-align:center">
                <table style="margin: 0 auto;" class="table table-hover table-striped">
                    <tr class="thead-dark">
                    <td><a style="text-align: center" class="btn btn-outline-dark btn-block btn-lg active" href="formularioRegistro.jsp" role="button">Agregar un registro</a></td>
                    </tr>
                    <tr  class="thead-dark">
                        <th>ID</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Color</th>
                        <th>Precio</th>
                        <th>Tipo</th>
                        <th scope="col" colspan="3"></th>
                    </tr>
                    <%
                        for(Zapatos zapato : shoes){
                    %>
                    <tr>
                        <td><%= zapato.getIdZapato()%></td>  
                        <td><%= zapato.getMarca() %></td> 
                        <td><%= zapato.getModelo()%></td>
                        <td><%= zapato.getColor()%></td>
                        <td><%= zapato.getPrecio()%></td>
                        <td><%= zapato.getTipo()%></td>
                        <td>
                            <a class="btn btn-outline-secondary btn-sm active" href="formularioEditaRegistro.jsp?id=<%= zapato.getIdZapato()%>">Editar registro</a>
                            <a class="btn btn-warning btn-sm" href="formularioEliminaRegistro.jsp?id=<%= zapato.getIdZapato()%>">Eliminar registro</a>
                            <a class="btn btn-danger btn-sm" href="EliminaRegistro2.jsp?id=<%= zapato.getIdZapato()%>">Eliminar registro v2</a>
                        </td>
                    <%}%>
                </table>
        </div>  
            <br> <br>
</form>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Principal</title>
    </head>
    <body>
        
    </body>
</html>
