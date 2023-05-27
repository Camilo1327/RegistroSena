

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>REGISTRO DE APRENDICES</h1>
        <div class="container">
            <div class="col-lg-6">
                <form action="ControladorIndex">
                    Formulario Aprendiz:<br>
                    
                    <input class="btn btn-danger" type="submit" name="accion" value="FAprendiz"><br> 
                    Formulario Programa:<br>
                    
                    <input class="btn btn-danger" type="submit" name="accion" value="FPrograma"><br> 
                    Formulario Ficha:<br>
                    
                    <input class="btn btn-danger" type="submit" name="accion" value="FFicha"><br> 
    </body>
</html>
