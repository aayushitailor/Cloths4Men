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
        %>
        
        <%
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","Aayu@1324!");
                st = con.createStatement();
                String str = "select * from user";
                resultSet = st.executeQuery(str);
                ResultSetMetaData rsmd = resultSet.getMetaData();
                
                int columnsNumber = rsmd.getColumnCount();
                while (resultSet.next()) {
                    for (int i = 1; i <= columnsNumber; i++) {
                        if (i > 1) System.out.print(",  ");
                        String columnValue = resultSet.getString(i);
                        System.out.print(columnValue + " " + rsmd.getColumnName(i));
                         %>
                <p><%=resultSet.getString(i) %></p>

                <% 
                    }
                    System.out.println("");
                }
            }
            catch(SQLException e){
                    System.out.println("SQLException: " + e);
            }
        %>     
    </body>
</html>
