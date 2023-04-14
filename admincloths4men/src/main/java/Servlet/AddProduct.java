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
import jakarta.servlet.http.Part;
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
@WebServlet(name = "AddProduct", urlPatterns = {"/AddProduct"})
//@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class AddProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection con = null;
        Statement st = null;
        ResultSet resultSet = null;
            
        response.setContentType("text/html");
        
        String name=request.getParameter("name");
        String cat=request.getParameter("cat");
        String brand=request.getParameter("brand");
        String qty=request.getParameter("qty");
        String color=request.getParameter("color");
        String size=request.getParameter("size");
        String price=request.getParameter("price");
        String des=request.getParameter("des");
        String image = "123.png";
//        Part filePart = request.getPart("file");
//        String fileName = filePart.getSubmittedFileName();
//        for (Part part : request.getParts()) {
//        part.write("assets/images/" + fileName);}
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                st = con.createStatement();
              
                
                int i=st.executeUpdate("INSERT INTO products(prodname,categoryid,brand,quantity,color,size,price,proddesc,ratings,images) values('" + name + "', + '" +cat+ "','" + brand + "', + '" +qty+ "','" + color + "', + '" +size+ "','" + price + "', + '" +des+ "','0','"+ image +"')");
                System.out.println("Data is successfully inserted!");
                response.sendRedirect("./products.jsp");

            }
            catch(Exception e){
                    System.out.println("Exception: " + e);
            }
    }

}
