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
import java.util.Date;

/**
 *
 * @author Robert Forde
 */
public class doTransferTrans extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = -4950663479106129717L;

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
        
        RequestDispatcher rd;
        int srcAcc = Integer.parseInt(request.getParameter("srcNo"));
        int amt = Integer.parseInt(request.getParameter("amount"));
        String sql = "SELECT balance FROM acc_details WHERE acc_no="+srcAcc;
        int srcBal = BankCommons.getBalance(sql);
        
        if(amt>srcBal) {
            rd = request.getRequestDispatcher("/lowBal.jsp");
            rd.forward(request, response);
        }
        else {
            String u = (String)request.getSession().getAttribute("uname");
            int destAcc = Integer.parseInt(request.getParameter("destNo"));
            String details = request.getParameter("details");
            String op = "TRANSFER FROM";
            String is = "YES";
            String t = new Date().toString();
            
            //Save amt as request attribute
            request.setAttribute("amount", amt);
            
            //Save trnsfer to the transfer table
            sql = "INSERT INTO transfer(uname,acc_no,dest_acc,amt,details,time1) VALUES('"+u+"',"+srcAcc+",'"+destAcc+"',"+amt+",'"+details+"','"+t+"')";
            BankCommons.update(sql);
                        
            //Take money out of srcAcc
            int newBal = srcBal - amt;
            sql = "UPDATE acc_details SET balance="+newBal+" WHERE acc_no="+srcAcc;
            BankCommons.update(sql);
            
            //Save "transfer from" to transaction table
                        
            sql = "INSERT INTO tx_details(uname,acc_no,operation,amt,balance,time1,isnew) VALUES('"+u+"',"+srcAcc+",'"+op+"',"+amt+","+newBal+",'"+t+"','"+is+"')";
            BankCommons.update(sql);
            
            
            //Put money in destAcc
            sql = "SELECT balance FROM acc_details WHERE acc_no="+destAcc;
            int destBal = BankCommons.getBalance(sql);
            newBal = destBal + amt;
            sql = "UPDATE acc_details SET balance="+newBal+" WHERE acc_no="+destAcc;
            BankCommons.update(sql);
            
            //Save "transfer to" to transaction table
            op = "TRANSFER TO";
            sql = "INSERT INTO tx_details(uname,acc_no,operation,amt,balance,time1,isnew) VALUES('"+u+"',"+destAcc+",'"+op+"',"+amt+","+newBal+",'"+t+"','"+is+"')";
            BankCommons.update(sql);
            
            request.setAttribute("destNo", destAcc);
        
            rd = request.getRequestDispatcher("/doTransfer.jsp");
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
