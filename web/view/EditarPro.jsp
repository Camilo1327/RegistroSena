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
        <h1>EDITOR DE PROGRAMAS</h1>
        <div class="container">
            <%
                ProgramaDao pro=new ProgramaDao();
                int idpro= Integer.parseInt((String)request.getAttribute("idpro"));
                
                Programa p = (Programa)pro.list(idpro);
                %>
            <div class="col-lg-6">
                <form action="ControladorPrograma">
                    Codigo del Programa:<br><!-- comment -->
                    <input class="form-control" type="number" name="txtcodpro" value="<%=p.getcodpro()%>"><br> <br> 
                    Nombre del programa:<br>
                    <input class="form-control" type="text" name="txtnombrepro" value="<%=p.getnompro()%>"><br> 
                    <input class="form-control" name="txtidpro" value="<%=idpro%>"><br> 
                    <input class="btn btn-danger" type="submit" name="accion" value="Actualizar"><br> 
                    </div>
                    </div>
            
    </body>
</html>
