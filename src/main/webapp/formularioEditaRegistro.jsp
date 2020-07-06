<%-- 
    Document   : formularioEditaRegistro
    Created on : 4/07/2020, 12:00:30 AM
    Author     : Pc
--%>

<%@page import="Doc.MarcasDB"%>
<%@page import="Doc.Marcas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Marcas> branch = new MarcasDB().ListadoMarcas();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar Registro</title>
    </head>
    <body>
        <form  action="editarRegistro.jsp" method="POST" class="form-control">
            <h1 class="p-3 mb-2 bg-info text-white bg-gradient-info"><p>Editar registro</p><a class="btn btn-danger text-white" href="index.jsp" role="button">Cancelar</a></h1>
            <div class="col">
                <div class="form-group">
                    <input type="hidden" name="idZapato" value="<%=id%>"/>
                </div>
                <select class="form-control" name="marca" id="marca">
                    <option value="">Seleccione una marca</option>
                    <%
                        for (Marcas marca : branch) {
                    %>
                    <option value="<%= marca.getIdMarca()%>"><%= marca.getMarca()%></option>
                    <%}%>
                </select><br>
            </div>
            <div class="form-group">
                <input type="text" placeholder="Color" name="color" id="color" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="text" placeholder="Modelo" name="modelo" id="modelo" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="number" step="any" placeholder="Precio" name="precio" id="precio" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="text" placeholder="Tipo" name="tipo" id="tipo" class="form-control"/>
            </div>
            <input  class="btn btn-outline-dark btn-block btn-lg active" type="submit" value="Agregar registro" class="btn bg-primary btn-lg" />
        </form>
    </div>
</body>
</html>