/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package class2.servlet;

import JavaBeans.AuthNRC;
import JavaBeans.NrcBean;
import class2.model.Querys;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lenovo
 */
public class BuscarNRC extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        NrcBean IB= new NrcBean();
        System.out.println("INFO");
        String nrc =  request.getParameter("nrc");
        Number nrc1=null;
       try{
       
       nrc1=Integer.valueOf(nrc);
       System.out.println("lologre");
        Querys consultas = new Querys();
        AuthNRC auth= new AuthNRC();
           System.out.println("consulti");
        auth=consultas.BuscarNRC((int)nrc1);
          System.out.println("lo logre campeon");
        ResultSet rs= auth.getRS();
        if(auth.getOPT()){
            
            IB.setNRC(rs.getInt("NRC"));
            IB.setID_profesor(rs.getInt("ID_profesor"));
            IB.setMatricula(rs.getInt("Matricula"));
            IB.setID_materia(rs.getInt("ID_materia"));
            request.getSession().setAttribute("servletMsg",IB); 
           // request.getSession().setAttribute("servletNrc",nrc);
            response.sendRedirect("views/buscarNRC.jsp");
            System.out.println(rs.getString("nombre"));
            
        }else{
            response.sendRedirect("inicio.jsp");
            
        }
        System.out.println(nrc
        );
       }catch(NumberFormatException ex){ // handle your exception
            response.sendRedirect("inicio.jsp");
        }catch(NullPointerException ex){
            response.sendRedirect("inicio.jsp");

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Autenticacion.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Autenticacion.class.getName()).log(Level.SEVERE, null, ex);
        }
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
