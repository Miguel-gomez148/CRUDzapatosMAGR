<%-- 
    Document   : formularioEditaMarca
    Created on : 4/07/2020, 12:03:41 AM
    Author     : Pc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% int id = Integer.parseInt(request.getParameter("id"));%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Editando Marca</title>
    </head>
    <body>
        <form  action="editarMarca.jsp" method="POST" class="form-control">
            <h1 class="p-3 mb-2 bg-info text-white bg-gradient-info"><p>Editar marca</p><a class="btn btn-danger" href="index.jsp" role="button">Cancelar</a></h1>
            <div class="form-group">
                <div class="form-group">
                    <input type="hidden" name="idMarca" value="<%=id%>"/>
                </div>
                <input type="text" placeholder="Nombre de la marca" name="marca" id="marca" class="form-control" required/>
            </div >
            <input  class="btn btn-outline-dark btn-block btn-lg active" type="submit" value="Editar"/>
        </form>
    </body>
</html>