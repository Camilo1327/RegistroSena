<%-- 
    Document   : FPrograma
    Created on : 26/04/2023, 6:39:21 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.List"%>
<%@page import="model.Programa"%>
<%@page import="modeldao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="vista/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>FICHA</title>
    </head>
    <body>
        <h1>REGISTRO DE FICHAS</h1>
        <div class="container">
            
                cha:<br>
                    <input class="form-control" type="number" name="txtcodficha"><br> 
                    Cantidad de aprendices:<br>
                    <input class="form-control" type="number" name="txtcantape"><br>
                    
                        <label >Nombre Programa:</label>
                        
                            <option value="0"></option>
                            <%ProgramaDao pro = new ProgramaDao(); 
                            List<Programa> lista = pro.listarpro();%>
                            <% for(Programa li:lista){%>
                            <option value="<%=li.getcodpro()%>"><%li.getnompro();%></option>
                            <%}%>
                            
                        
                    
                            <br>
                            <label></label>
                    Codigo del programa:<br>
                    <input class="form-control" type="number" name="txtprograma"><br> 
                    Codigo del aprendiz:<br>
                    <input class="form-control" type="number" name="txtaprendiz"><br> 
                    <input class="btn btn-danger" type="submit" name="accion" value="Agregar"><br> 

                    
                    
                    
                
                
            
        
    </body>
</html>
