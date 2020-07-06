<%-- 
    Document   : formularioEliminaMarca
    Created on : 4/07/2020, 12:04:15 AM
    Author     : Pc
--%>

<%@page import="Doc.*"%>
<%@page import="java.sql.*"%>
<%      int id = Integer.parseInt(request.getParameter("id"));
        MarcasDB branch = new MarcasDB();
        int id2= branch.validaId(id);  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Elimina Marca</title>
    </head>
    <body>
        <div class="form-group">
            <form  action="EliminaMarca.jsp" method="POST">
                 <h1 class="p-3 mb-2 bg-info text-white bg-gradient-info">Eliminar Marca</h1>
                <div class="form-group">
                    <label>¿Desea eliminar la Marca?</label>
                    <input type="hidden" name="idMarca" value="<%=id2%>"/>
                </div>
                <input class="btn btn-info btn-lg" type="submit" value="Eliminar"/>
                <a class="btn btn-danger text-white" href="index.jsp" role="button">Cancelar</a>
            </form>
        </div>
    </body>
</html>

