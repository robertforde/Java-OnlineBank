/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlinebank.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import com.onlinebank.model.BankCommons;
import java.util.Random;

/**
 *
 * @author Robert Forde
 */
public class doAccount extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = -2524641095305028225L;

	/**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Random r = new Random();
        int new_acc_no = (r.nextInt(1000000000) +1000000000);
        boolean exists = BankCommons.check("SELECT * FROM acc_details WHERE acc_no=new_acc_no");
        while(exists==true) {
            new_acc_no = (r.nextInt(1000000000) +1000000000);
            exists = BankCommons.check("SELECT * FROM acc_details WHERE acc_no=new_acc_no");
        }
        
        request.setAttribute("accNo", new_acc_no);

        String u=(String) request.getSession().getAttribute("uname");
        String sql="INSERT INTO acc_details(acc_no,uname) VALUES("+new_acc_no+",'"+u+"')";
        BankCommons.update(sql);
        
        RequestDispatcher rd = request.getRequestDispatcher("/account.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
