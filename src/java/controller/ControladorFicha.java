/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Ficha;
import modeldao.FichaDao;

/**
 *
 * @author APRENDIZ
 */
@WebServlet(name = "ControladorFicha", urlPatterns = {"/ControladorFicha"})
public class ControladorFicha extends HttpServlet {
String agregarfic = "view/FFicha.jsp";
   String listarfic = "view/ListarFic.jsp";
   String editarfic = "view/EditarFic.jsp";
   Ficha p = new Ficha();
   FichaDao fdao = new FichaDao();
   int idficha;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorFicha</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorFicha at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("Listar"))
        {
            acceso=listarfic;
        }else if(action.equalsIgnoreCase("agregarpro"))
        {
         acceso = agregarfic;
        }if(action.equalsIgnoreCase("Agregar"))
        {
            int codficha = Integer.parseInt(request.getParameter("txtcodficha"));
            int canape = Integer.parseInt(request.getParameter("txtcantape"));
            int codpro = Integer.parseInt(request.getParameter("txtcodigopro"));
            int codaprendiz = Integer.parseInt(request.getParameter("txtcodape"));
            
            
            p.setCodficha(codficha);
            p.setCantape(canape);
            p.setCodpro(codpro);
            p.setCodaprendiz(codaprendiz);
            
            fdao.registroficha(p);
           acceso=listarfic;
         }else if(action.equalsIgnoreCase("eliminar")){
            idficha=Integer.parseInt(request.getParameter("idficha"));
            p.setIdficha(idficha);
            fdao.eliminarficha(idficha);
            acceso=listarfic;
            }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idficha",request.getParameter("idficha"));
             acceso=editarfic;}
            else if(action.equalsIgnoreCase("Actualizar")){
          int codfic = Integer.parseInt(request.getParameter("txtcodificha"));
            int canape = Integer.parseInt(request.getParameter("txtcantiape"));
            int codpro = Integer.parseInt(request.getParameter("txtcodigopro"));
            int codaprendiz = Integer.parseInt(request.getParameter("txtcodape"));
            
            
            p.setCodficha(codfic);
            p.setCantape(canape);
            p.setCodpro(codpro);
            p.setCodaprendiz(codaprendiz);
            
            fdao.actualizarficha(p);
           acceso=listarfic;
         }
        
            RequestDispatcher view=request.getRequestDispatcher(acceso);
            view.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
