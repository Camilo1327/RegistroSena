<%@page import="model.Aprendiz"%>
<%@page import="modeldao.AprendizDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="container">
            <h1>EDITOR DE APRENDICES</h1>
                <%
                AprendizDao ape=new AprendizDao();
                int id= Integer.parseInt((String)request.getAttribute("id"));
                Aprendiz ap = (Aprendiz)ape.list(id);
                %>
                
                
                
                <form action="ControladorAprendiz">
                    
                   Documento del aprendiz:<br>
                    <input class="form-control" type="number" name="txtdocuape" value="<%=ap.getDocu()%>"><br> 
                    Nombre del aprendiz:<br>
                    <input class="form-control" type="text" name="txtnombreape" value="<%=ap.getNombrea()%>"><br> 
                    Apellido del aprendiz:<br>
                    <input class="form-control" type="text" name="txtapelliape" value="<%=ap.getApellidoa()%>"><br> 
                    Correo del aprendiz:<br>
                    <input class="form-control" type="email" name="txtcorreoape" value="<%=ap.getCorreoa()%>"><br> 
                    Numero del aprendiz:<br>
                    <input class="form-control" type="number" name="txtnumeape" value="<%=ap.getNumcontacto()%>"><br> 
                    
                     <input class="form-control" name="txtid" value="<%=id%>"><br> 
                    <input class="btn btn-danger" type="submit" name="accion" value="Actualizar"><br> 
                
                    </div>
                    </body>
</html>
