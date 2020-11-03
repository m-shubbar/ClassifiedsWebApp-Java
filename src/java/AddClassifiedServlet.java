/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import beans.Classified;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mustafa Shubbar <codingbox@outlook.com>
 */
@WebServlet(urlPatterns = {"/AddClassifiedServlet"})
public class AddClassifiedServlet extends HttpServlet {

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
        
        String btnAction = request.getParameter("btnAction");
        
        if(btnAction.equals("Add")) {
            HttpSession session = request.getSession();
            ArrayList<Classified> classifieds = 
                    (ArrayList<Classified>)session.getAttribute("classifieds-list");
            if(classifieds==null) {
                classifieds = new ArrayList<Classified>();
            }
            Classified newC = new Classified();
            newC.setProduct(request.getParameter("product"));
            newC.setShortDesc(request.getParameter("shortDesc"));
            newC.setLongDesc(request.getParameter("longDesc"));
            newC.setContactName(request.getParameter("contactName"));
            newC.setContactNumber(request.getParameter("contactNumber"));
            newC.setPrice(Double.parseDouble(request.getParameter("price")));
            
            classifieds.add(newC);
            session.setAttribute("classifieds-list", classifieds);
            
            response.sendRedirect("addClassified.jsp");
            
        } else {
            response.sendRedirect("index.jsp");
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
        processRequest(request, response);
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
