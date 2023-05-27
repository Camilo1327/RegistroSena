<%@page import="modeldao.FichaDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Ficha"%>

<!DOCTYPE html>
<html>
    <head>
        
        <title>Lista Fichas</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>FICHAS REGISTRADAS EN EL SISTEMA</h1>
            <table class="table table-responsive">
                <thead>
                    <tr>
                        
                        <th class="text-center">ID </th>
                        <th class="text-center">Codigo Ficha</th>
                        <th class="text-center">Codigo Programa</th>
                        <th class="text-center"> Cant Aprendices</th>
                        <th class="text-center">Codigo aprendiz</th>
                        
                        
                        
                    </tr>
                    
                </thead>
                
                <% 
                FichaDao fdao=new FichaDao();
                List<Ficha>Listar=fdao.listaFichas();
                Iterator<Ficha>it=Listar.iterator();
                Ficha fi=null;
                while(it.hasNext()){
                    fi=it.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=fi.getIdficha()%></td>
                        <td class="text-center"><%=fi.getCodficha()%></td>
                        <td class="text-center"><%=fi.getCantape()%></td>
                        <td class="text-center"><%=fi.getCodpro()%></td>
                        <td class="text-center"><%=fi.getCodaprendiz()%></td>
                        
                        <td class="text-center">
                            <a class="btn btn-danger" href="../ControladorFicha?accion=editar&idficha=<%=fi.getIdficha()%>">Editar</a>
                            <a class="btn btn-warning" href="../ControladorFicha?accion=eliminar&idficha=<%=fi.getIdficha()%>">Eliminar</a>
                        </td>
                        
                    </tr>
                    <%}%>
                </tbody>
                
                
            </table>
            
        </div>
        
    </body>
</html>