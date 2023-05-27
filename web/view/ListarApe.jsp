<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Aprendiz"%>
<%@page import="modeldao.AprendizDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Lista</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>APRENDICES REGISTRADOS EN EL SISTEMA</h1>
            <table class="table table-responsive">
                <thead>
                    <tr>
                        <th class="text-center">Id</th>
                        <th class="text-center">Documento</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellido</th>
                        <th class="text-center">Correo</th>
                        <th class="text-center">Numero de Contacto</th>
                        
                        
                        
                    </tr>
                    
                </thead>
                
                <% 
                AprendizDao apdao=new AprendizDao();
                List<Aprendiz>Listar=apdao.listarape();
                Iterator<Aprendiz>it=Listar.iterator();
                Aprendiz usu=null;
                while(it.hasNext()){
                    usu=it.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=usu.getId()%></td>
                        <td class="text-center"><%=usu.getDocu()%></td>
                        <td class="text-center"><%=usu.getNombrea()%></td>
                        <td class="text-center"><%=usu.getApellidoa()%></td>
                        <td class="text-center"><%=usu.getCorreoa()%></td>
                        <td class="text-center"><%=usu.getNumcontacto()%></td>
                        
                        <td class="text-center">
                            <a class="btn btn-danger" href="../ControladorAprendiz?accion=editar&id=<%=usu.getId()%>">Editar</a>
                            <a class="btn btn-warning" href="../ControladorAprendiz?accion=eliminar&id=<%=usu.getId()%>">Eliminar</a>
                        </td>
                        
                    </tr>
                    <% } %>
                </tbody>
                
                
            </table>
            
        </div>
        
    </body>
</html>