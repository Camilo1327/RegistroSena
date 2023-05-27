<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Programa"%>
<%@page import="modeldao.ProgramaDao"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Lista</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>PROGRAMAS REGISTRADOS EN EL SISTEMA</h1>
            <table class="table table-responsive">
                <thead>
                    <tr>
                        
                        <th class="text-center">ID Programa</th>
                        <th class="text-center">Codigo Ficha</th>
                        <th class="text-center">Nombre Programa</th>
                        
                        
                        
                        
                        
                    </tr>
                    
                </thead>
                
                <% 
                ProgramaDao prodao=new ProgramaDao();
                List<Programa>Listar=prodao.listarpro();
                Iterator<Programa>it=Listar.iterator();
                Programa usu=null;
                while(it.hasNext()){
                    usu=it.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=usu.getidpro()%></td>
                        <td class="text-center"><%=usu.getcodpro()%></td>
                        <td class="text-center"><%=usu.getnompro()%></td>
                        
                        <td class="text-center">
                            <a class="btn btn-danger" href="../ControladorPrograma?accion=editar&idpro=<%=usu.getidpro()%>">Editar</a>
                            <a class="btn btn-warning" href="../ControladorPrograma?accion=eliminar&idpro=<%=usu.getidpro()%>">Eliminar</a>
                        </td>
                        
                    </tr>
                    <%}%>
                </tbody>
                
                
            </table>
            
        </div>
        
    </body>
</html>