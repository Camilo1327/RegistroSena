

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>REGISTRO DE APRENDICES</h1>
        <div class="container">
            <div class="col-lg-6">
                <form action="../ControladorAprendiz">
                   Documento del aprendiz:<br>
                    <input class="form-control" type="number" name="txtdocuape"><br> 
                    Nombre del aprendiz:<br>
                    <input class="form-control" type="text" name="txtnombreape"><br> 
                    Apellido del aprendiz:<br>
                    <input class="form-control" type="text" name="txtapelliape"><br> 
                    Correo del aprendiz:<br>
                    <input class="form-control" type="email" name="txtcorreoape"><br> 
                    Numero del aprendiz:<br>
                    <input class="form-control" type="number" name="txtnumeape"><br> 
                    <input class="btn btn-danger" type="submit" name="accion" value="Agregar"><br> 
    </body>
</html>
