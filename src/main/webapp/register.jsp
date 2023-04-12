<%-- 
    Document   : Datbase
    Created on : 13 Mar 2023, 22:42:34
    Author     : nazar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet resultSet = null;
            
            String first_name=request.getParameter("c_fname");
            String last_name=request.getParameter("c_lname");
            String user_name=request.getParameter("c_uname");
            String email=request.getParameter("c_email");
            String password=request.getParameter("c_pwd");
            String contact=request.getParameter("c_cno");
            String address=request.getParameter("c_address");
            
            System.out.println("DATA " + first_name + last_name +  user_name  +  email  + password  +  contact  + address);

    
        %>

        <%
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","Aayu@1324!");
                st = con.createStatement();
                String str = "select * from user";
                resultSet = st.executeQuery(str);
                ResultSetMetaData rsmd = resultSet.getMetaData();
                
                int i=st.executeUpdate("INSERT INTO user(firstname, lastname, username, password, email, contact, address) values('" + first_name + "','" + last_name + "', '" + user_name + "','" + password + "','" + email + "', '" + contact + "','" + address + "')");
                System.out.println("Data is successfully inserted!");
            }
            catch(SQLException e){
                    System.out.println("SQLException: " + e);
            }
        %>     
    </body>
</html>