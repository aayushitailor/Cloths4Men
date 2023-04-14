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
@WebServlet(name = "AddBrand", urlPatterns = {"/AddBrand"})
//@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class AddBrand extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection con = null;
        Statement st = null;
        ResultSet resultSet = null;
            
        response.setContentType("text/html");  
        String first_name=request.getParameter("userName");
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                st = con.createStatement();
                String str = "select * from brand";
                resultSet = st.executeQuery(str);
                ResultSetMetaData rsmd = resultSet.getMetaData();
                
                int i=st.executeUpdate("INSERT INTO brand(bname) values('" + first_name + "')");
                System.out.println("Data is successfully inserted!");
                response.sendRedirect("./brand.jsp");

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
