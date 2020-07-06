<%-- 
    Document   : formularioMarca
    Created on : 4/07/2020, 12:07:03 AM
    Author     : Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Registro Marca</title>
    </head>
    <body>
            <h1 class="p-3 mb-2 bg-info text-white bg-gradient-info"><p>Agregar una nueva marca</p><a class="btn btn-danger" href="index.jsp" role="button">Cancelar</a></h1>
            <form  action="agregarMarca.jsp" method="POST" class="form-control">
                <div class="form-group">
                    <input type="text" placeholder="Nombre de la marca" name="marca" id="marca" class="form-control" required/>
                </div >
                <input  class="btn btn-outline-dark btn-block btn-lg active" type="submit" value="Agregar Marca"/>
            </form>
    </body>
</html>