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
import java.sql.Statement;

/**
 *
 * @author chandnipatel
 */
@WebServlet(name = "UpdateOrder", urlPatterns = {"/UpdateOrder"})
public class UpdateOrder extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection con = null;
        Statement st = null;
        ResultSet resultSet = null;
            
        response.setContentType("text/html");  
        String orderid = request.getParameter("orderid");
        String orderstatus = request.getParameter("orderstatus");
        
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                st = con.createStatement();
                
//                int i=st.executeUpdate("INSERT INTO brand(bname) values('" + first_name + "')");
                int i=st.executeUpdate("UPDATE orders SET orderstatus = '" + orderstatus + "' WHERE ordered = '"+orderid+"';");
                response.sendRedirect("./index.jsp");

            }
            catch(Exception e){
                    System.out.println("Exception: " + e);
            }
    }


}
