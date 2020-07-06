<%-- 
    Document   : formularioEliminaRegistro
    Created on : 4/07/2020, 12:01:49 AM
    Author     : Pc
--%>

<%@page import="Doc.*"%>
<%@page import="java.sql.*"%>
<%      int id = Integer.parseInt(request.getParameter("id"));
        ZapatosDB shoes = new ZapatosDB();
        int id2= shoes.validaId(id);  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Elimina usuario</title>
    </head>
    <body>
        <div class="form-group">
            <form  action="EliminaRegistro.jsp" method="POST">
                 <h1 class="p-3 mb-2 bg-info text-white bg-gradient-info">Eliminar registro</h1>
                <div class="form-group">
                    <label>¿Desea eliminar el registro?</label>
                    <input type="hidden" name="idZapato" value="<%=id2%>"/>
                </div>
                <input class="btn btn-info btn-lg" type="submit" value="Eliminar"/>
                <a class="btn btn-danger text-white" href="index.jsp" role="button">Cancelar</a>
            </form>
        </div>
    </body>
</html>
