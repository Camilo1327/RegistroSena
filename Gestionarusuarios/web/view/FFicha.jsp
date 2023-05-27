<%-- 
    Document   : FPrograma
    Created on : 26/04/2023, 6:39:21 p. m.
    Author     : APRENDIZ
--%>


<%@page import="model.Aprendiz"%>
<%@page import="modeldao.AprendizDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Programa"%>
<%@page import="modeldao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Ficha</title>
    </head>
    <body>
        <h1>Agregar Ficha</h1>
    <div class="container">
            <div class="col-lg-6">
                <form action="../ControladorFicha">
                   Codigo ficha:<br>
                    <input class="form-control" type="number" name="txtcodficha"><br>
                    Cantidad Aprendices:<br>
                    <input class="form-control" type="number" name="txtcantape"><br>
                    <div class="form-group">
                        <label> Nombre Programa:</label>
                        <br>
                        <select name="txtcodigopro" class="custom-select" type="text">
                            <option value="0"></option>
                            <%ProgramaDao pro=new ProgramaDao();
                            List<Programa> lista = pro.listarpro();
                            %>
                            <% for(Programa li:lista){%>
                            <option value="<%=li.getcodpro()%>"><%=li.getnompro()%></option>
                            <%}%>
                        </select>
                    </div>
                        <div class="form-group">
                            <label for="CodCateg">Seleciona aprendices:</label>
                            <br>
                            <select name="txtcodape" class="custom-select" type="text">
                                <%AprendizDao ape= new AprendizDao();
                                List<Aprendiz> listar= ape.listarape();%>
                        <% for(Aprendiz ca:listar){%>
                       
                        <option value="<%=ca.getId()%>"><%=ca.getDocu()%><%=ca.getNombrea()%></option>
                         <%}%>
                            </select>
                   
                    <br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><br>
                
            </div>
                            
            </div>
    </div>
    </body>
    </html>
