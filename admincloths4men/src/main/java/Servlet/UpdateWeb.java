/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

/**
 *
 * @author chandnipatel
 */
@WebServlet(name = "UpdateWeb", urlPatterns = {"/UpdateWeb"})
//@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class UpdateWeb extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection con = null;
        Statement st = null;
        ResultSet resultSet = null;
            
        response.setContentType("text/html");  
        String name=request.getParameter("name");
        String sdes=request.getParameter("sdes");
        String contact=request.getParameter("contact");
        String mail=request.getParameter("mail");
        String address=request.getParameter("address");
        String embedmap=request.getParameter("embedmap");
        
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                st = con.createStatement();
                
//                int i=st.executeUpdate("INSERT INTO brand(bname) values('" + first_name + "')");
                int i=st.executeUpdate("UPDATE settings SET webname = '"+ name + "', sdes = '"+ sdes +"', contact = '"+ contact +"', email = '"+ mail +"', address = '"+ address +"', embedmap = '"+ embedmap +"' WHERE sid = 1;");
                response.sendRedirect("./web.jsp");

            }
            catch(Exception e){
                    System.out.println("Exception: " + e);
            }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
