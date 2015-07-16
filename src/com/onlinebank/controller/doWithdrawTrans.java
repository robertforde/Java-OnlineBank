/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlinebank.controller;

import com.onlinebank.model.BankCommons;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Robert Forde
 */
public class doWithdrawTrans extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = -3620607563266363407L;

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
        PrintWriter out = response.getWriter();
                
        String u = (String) request.getSession().getAttribute("uname");
        int acc = Integer.parseInt(request.getParameter("accNo"));
        String op = "WITHDRAW";
        int amt = Integer.parseInt(request.getParameter("amount"));
        String t = new Date().toString();
        String is = "YES";
        
        String sql = "SELECT balance FROM acc_details WHERE acc_no="+acc;
        int b = BankCommons.getBalance(sql);
        
        RequestDispatcher rd;
        out.println("-"+b);
        out.println("-"+amt);
        if(b<amt) {
            rd = request.getRequestDispatcher("/noBal.jsp");
            rd.forward(request, response);
        }else {
            int newb = b - amt;
            sql = "UPDATE acc_details SET balance="+newb+" WHERE acc_no="+acc;
            BankCommons.update(sql);
        
            sql = "INSERT INTO tx_details(uname,acc_no,operation,amt,balance,time1,isnew) VALUES('"+u+"',"+acc+",'"+op+"',"+amt+","+newb+",'"+t+"','"+is+"')";
            BankCommons.update(sql);
        
            request.setAttribute("balance", newb);
        
            rd = request.getRequestDispatcher("/doWithdraw.jsp");
            rd.forward(request, response);
        }
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
