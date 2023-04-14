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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

/**
 *
 * @author aayushitailor
 */
@WebServlet(name = "RegisterServlet", urlPatterns = { "/RegisterServlet" })
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Connection con = null;
        Statement st = null;
        ResultSet resultSet = null;

        response.setContentType("text/html");
        String first_name = request.getParameter("c_fname");
        String last_name = request.getParameter("c_lname");
        String user_name = request.getParameter("c_uname");
        String email = request.getParameter("c_email");
        String password = request.getParameter("c_pwd");
        String contact = request.getParameter("c_cno");
        String address = request.getParameter("c_address");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false",
                    "root", "Aayu@1324!");
            st = con.createStatement();
            String str = "select * from users";
            resultSet = st.executeQuery(str);
            ResultSetMetaData rsmd = resultSet.getMetaData();

            int i = st.executeUpdate(
                    "INSERT INTO users(firstname, lastname, username, password, email, contact, address) values('"
                            + first_name + "','" + last_name + "', '" + user_name + "','" + password + "','" + email
                            + "', '" + contact + "','" + address + "')");
            System.out.println("Data is successfully inserted!");
            response.sendRedirect("./index.jsp");

        } catch (Exception e) {
            System.out.println("Exception: " + e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
