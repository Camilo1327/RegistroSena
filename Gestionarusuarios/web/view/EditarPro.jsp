<%@page import="model.Programa"%>
<%@page import="modeldao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDITOR DE APRENDICES</h1>
        <div class="container">
            <%
                ProgramaDao pro=new ProgramaDao();
                int idpro= Integer.parseInt((String)request.getAttribute("idpro"));
                Programa p = new Programa();
                p=pro.list(idpro);
                %>
            <div class="col-lg-6">
                <form action="../ControladorPro">
                    ID del programa:<br>
                    <input class="form-control" type="number" name="txtidape"><br> 
                   Codigo del programa:<br>
                    <input class="form-control" type="number" name="txtcodpro"><br> 
                    Nombre del programa:<br>
                    <input class="form-control" type="text" name="txtnombrepro"><br> 
                    <input class="btn btn-danger" type="submit" name="accion" value="Editar"><br> 
                    </div>
                    </div>
            
    </body>
</html>
