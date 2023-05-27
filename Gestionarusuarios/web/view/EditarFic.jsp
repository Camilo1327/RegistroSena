<%@page import="model.Ficha"%>
<%@page import="modeldao.FichaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="container">
            <h1>EDITOR DE APRENDICES</h1>
                <%
                FichaDao fdao=new FichaDao();
                int idficha= Integer.parseInt((String)request.getAttribute("idficha"));
                Ficha fi = new Ficha();
                fi=fdao.list(idficha);
                %>
                
                
                
                <form action="ControladorAprendiz">
                    
                    Codigo de la ficha:<br>
                    <input class="form-control" type="text" name="txtnombreape" value="<%=fi.getCodficha()%>"><br> 
                    Cantidad de aprendices:<br>
                    <input class="form-control" type="text" name="txtapelliape" value="<%=fi.getCantape()%>"><br> 
                    Codigo del programa:<br>
                    <input class="form-control" type="email" name="txtcorreoape" value="<%=fi.getCodpro()%>"><br> 
                    Codigo del aprendiz:<br>
                    <input class="form-control" type="number" name="txtnumeape" value="<%=fi.getCantape()%>"><br> 
                    ID del aprendiz:<br>
                    <input class="form-control" type="number" name="txtidape" value="<%=fi.getIdficha()%>"><br> 
                    <input class="btn btn-danger" type="submit" name="accion" value="Actualizar"><br> 
                </form>
                    </div>
                    </body>
</html>
