<%-- 
    Document   : product
    Created on : 14-Apr-2023, 4:55:07 pm
    Author     : chandnipatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

    <title>Admin</title>

    <meta name="description" content="Dashmix - Bootstrap 5 Admin Template &amp; UI Framework created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">

    <!-- Open Graph Meta -->
    <meta property="og:title" content="Dashmix - Bootstrap 5 Admin Template &amp; UI Framework">
    <meta property="og:site_name" content="Dashmix">
    <meta property="og:description" content="Dashmix - Bootstrap 5 Admin Template &amp; UI Framework created by pixelcave and published on Themeforest">
    <meta property="og:type" content="website">
    <meta property="og:url" content="">
    <meta property="og:image" content="">

    <!-- Icons -->
    <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
    <link rel="shortcut icon" href="assets/media/favicons/favicon.png">
    <link rel="icon" type="image/png" sizes="192x192" href="assets/media/favicons/favicon-192x192.png">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/media/favicons/apple-touch-icon-180x180.png">
    <!-- END Icons -->

    <!-- Stylesheets -->
    <!-- Dashmix framework -->
    <link rel="stylesheet" id="css-main" href="assets/css/dashmix.min.css">

    <!-- You can include a specific file from css/themes/ folder to alter the default color theme of the template. eg: -->
    <!-- <link rel="stylesheet" id="css-theme" href="assets/css/themes/xwork.min.css"> -->
    <!-- END Stylesheets -->
  </head>

  <body>
    <!-- Page Container -->
   
      <!-- Sidebar -->
      <!--
        Sidebar Mini Mode - Display Helper classes

        Adding 'smini-hide' class to an element will make it invisible (opacity: 0) when the sidebar is in mini mode
        Adding 'smini-show' class to an element will make it visible (opacity: 1) when the sidebar is in mini mode
          If you would like to disable the transition animation, make sure to also add the 'no-transition' class to your element

        Adding 'smini-hidden' to an element will hide it when the sidebar is in mini mode
        Adding 'smini-visible' to an element will show it (display: inline-block) only when the sidebar is in mini mode
        Adding 'smini-visible-block' to an element will show it (display: block) only when the sidebar is in mini mode
      -->
    <%@include file="include/sidebar.jsp"%>
      <!-- END Sidebar -->

      <!-- Header -->
    <%@include file="include/header.jsp"%>
      <!-- END Header -->

      <!-- Main Container -->
      <main id="main-container">
        

        <!-- Page Content -->
        <div class="content">
          <!-- Full Table -->
          <div class="block block-rounded">
            <div class="block-header block-header-default">
              <h3 class="block-title">Product</h3>
              <div class="block-options">
                <button type="button" class="btn-block-option">
                  <i class="si si-settings"></i>
                </button>
              </div>
            </div>
            <div class="block-content">
             
              <div class="table-responsive">
                <table class="table table-bordered table-striped table-vcenter">
                  <thead>
                        <tr>
                        <th>Image</th>
                        <th>Product</th>
                        <th>User</th>
                        <th>Payment ID</th>
                        <th>Quantity</th>
                        <th>Color | Size</th>
                        <th>Amount</th>
                        <th>Time</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    
                      <%

                                        Connection con = null;
                                        Statement st = null;
                                        ResultSet resultSet = null;
                                        try {
                                            Class.forName("com.mysql.cj.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");
                                            Statement stmt = con.createStatement();
                                            ResultSet rs = stmt.executeQuery("select * from orders as o left join products as p on p.prodid=o.prodid left join users as u on u.uid=o.uid");
                                            while (rs.next()) {
                                                //select * from orders as o left join products as p on p.prodid=o.prodid left join users as u on u.uid=o.uid
                      %>
                      <tr>
                          <td>
                              <div class="product-box">
                                  <img src="assets/images/products/<%=rs.getString("prodid")%>.png" height="100" alt="">
                              </div>
                          </td>
                          <td>
                              <%=rs.getString("prodname")%>
                          </td>
                          <td>
                              <%=rs.getString("firstname")%>  <%=rs.getString("lastname")%>
                          </td>
                          <td>
                              <%=rs.getString("paymentid")%>
                          </td>
                          <td>
                              <%=rs.getString("qty")%>
                          </td>
                          <td>
                              <%=rs.getString("color")%> | <%=rs.getString("size")%>
                          </td>
                          <td>
                              <%=rs.getString("amount")%>
                          </td>

                          <td>
                              <%=rs.getString("ordertime")%>
                          </td>
                          <td>    
                              <%
                              if (rs.getInt("orderstatus") == 0) {
                              %>
                              Pending
                              <%
                              } else if (rs.getInt("orderstatus") == 1) {
                              %>
                              Processing
                              <%
                               } else if (rs.getInt("orderstatus") == 2) {
                              %>
                              Out For Delivery
                              <%
                               }
                              else{
                              %>
                              Delivered
                              <%
                               }
                              %>
                          </td>

                          <td>
                              <div class="dropdown">
                                  <button class="btn btn-sm btn-light border dropdown-toggle dropdown-toggle-nocaret" type="button" data-bs-toggle="dropdown">
                                      <i class="bi bi-three-dots"></i>
                                  </button>
                                  <ul class="dropdown-menu">
                                      <li><a class="dropdown-item" href="manageorder.jsp?id=<%=rs.getString("ordered")%>">Edit</a></li>
                                      <li><a class="dropdown-item" href="order-delete?id=<%=rs.getString("prodid")%>">Delete</a></li>
                                  </ul>
                              </div>
                          </td>
                      </tr>
                      <%
                              }
                          } catch (Exception e) {
                              out.println("error");
                          }
                      %>    
                            
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <!-- END Full Table -->

        </div>
        <!-- END Page Content -->
      </main>
      <!-- END Main Container -->

      
    <%@include file="include/footer.jsp"%>

