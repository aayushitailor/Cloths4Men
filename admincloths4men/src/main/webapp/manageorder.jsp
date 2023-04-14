<%-- 
    Document   : manageorder
    Created on : 14-Apr-2023, 5:38:28 pm
    Author     : chandnipatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
    
    <div id="page-container" class="sidebar-o sidebar-dark enable-page-overlay side-scroll page-header-fixed main-content-narrow">


      <!-- Sidebar -->
      <%@include file="include/sidebar.jsp"%>
      <!-- END Sidebar -->

      <!-- Header -->    
      <%@include file="include/header.jsp"%>
      <!-- END Header -->
        <%
            Connection con = null;
            Statement st = null;
            ResultSet resultSet = null;
        %>

     
            <%
       try {
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");
          Statement stmt = con.createStatement();

          String orderid=request.getParameter("id");

          ResultSet rs = stmt.executeQuery("select * from orders as o left join products as p on p.prodid=o.prodid left join users as u on u.uid=o.uid left join category as c on c.categoryid=p.categoryid where o.ordered='"+ orderid +"'");
          while (rs.next()) {%>
      <!-- Main Container -->
      <main id="main-container">
        <!-- Page Content -->
        <div class="content">
          <!-- Quick Overview -->
          <div class="row items-push">
            <div class="col-6 col-lg-3">
              <a class="block block-rounded block-link-shadow text-center h-100 mb-0" href="javascript:void(0)">
                <div class="block-content py-5">
                  <div class="item rounded-circle bg-xeco-lighter mx-auto mb-3">
                    <i class="fa fa-check text-xeco-dark"></i>
                  </div>
                  <p class="fw-semibold fs-sm text-muted text-uppercase mb-0">
                    ORD.<%=rs.getString("ordered")%>
                  </p>
                </div>
              </a>
            </div>
            <div class="col-6 col-lg-3">
              <a class="block block-rounded block-link-shadow text-center h-100 mb-0" href="javascript:void(0)">
                <div class="block-content py-5">
                  <div class="item rounded-circle bg-xeco-lighter mx-auto mb-3">
                    <i class="fa fa-check text-xeco-dark"></i>
                  </div>
                  <p class="fw-semibold fs-sm text-muted text-uppercase mb-0">
                    Payment
                  </p>
                </div>
              </a>
            </div>
            <div class="col-6 col-lg-3">
              <a class="block block-rounded block-link-shadow text-center h-100 mb-0" href="javascript:void(0)">
                <div class="block-content py-5">
                  <div class="item rounded-circle bg-xsmooth-lighter mx-auto mb-3">
                    <i class="fa fa-sync fa-spin text-xsmooth-dark"></i>
                  </div>
                  <p class="fw-semibold fs-sm text-muted text-uppercase mb-0">
                    Packaging
                  </p>
                </div>
              </a>
            </div>
            <div class="col-6 col-lg-3">
              <a class="block block-rounded block-link-shadow text-center h-100 mb-0" href="javascript:void(0)">
                <div class="block-content py-5">
                  <div class="item rounded-circle bg-body mx-auto mb-3">
                    <i class="fa fa-times text-muted"></i>
                  </div>
                  <p class="fw-semibold fs-sm text-muted text-uppercase mb-0">
                    Delivery
                  </p>
                </div>
              </a>
            </div>
          </div>
          <!-- END Quick Overview -->

          <!-- Products -->
          <div class="block block-rounded">
            <div class="block-header block-header-default">
              <h3 class="block-title">Products</h3>
            </div>
            <div class="block-content">
              <div class="table-responsive">
                <table class="table table-borderless table-striped table-vcenter fs-sm">
                  <thead>
                    <tr>
                      <th class="text-center" style="width: 100px;">ID</th>
                      <th>Product Name</th>
                      <th class="text-center">Stock</th>
                      <th class="text-center">Qty</th>
                      <th class="text-end" style="width: 10%;">Unit Cost</th>
                      <th class="text-end" style="width: 10%;">Price</th>
                    </tr>
                  </thead>
                  <tbody>
                      
                    <tr>
                      <td class="text-center"><a href="be_pages_ecom_product_edit.html"><strong>PID.<%=rs.getString("prodid")%></strong></a></td>
                      <td><a href="be_pages_ecom_product_edit.html"><strong><%=rs.getString("prodname")%></strong></a></td>
                      <td class="text-center"><%=rs.getString("quantity")%></td>
                      <td class="text-center"><strong><%=rs.getString("qty")%></strong></td>
                      <td class="text-end">$<%=rs.getString("price")%></td>
                      <td class="text-end">$<%=rs.getString("amount")%></td>
                    </tr>
                    
                    <tr>
                      <td colspan="5" class="text-end"><strong>Total Price:</strong></td>
                      <td class="text-end">$<%=rs.getString("amount")%></td>
                    </tr>
                    <tr>
                      <td colspan="5" class="text-end"><strong>Total Paid:</strong></td>
                      <td class="text-end">$<%=rs.getString("amount")%></td>
                    </tr>
                    <tr class="table-active">
                      <td colspan="5" class="text-end text-uppercase"><strong>Total Due:</strong></td>
                      <td class="text-end"><strong>$0,00</strong></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <!-- END Products -->

          <!-- Customer -->
          <div class="row">
            <div class="col-sm-6">
              <!-- Billing Address -->
              <div class="block block-rounded">
                <div class="block-header block-header-default">
                  <h3 class="block-title">Billing Address</h3>
                </div>
                <div class="block-content">
                  <div class="fs-4 mb-1">Helen Jacobs</div>
                  <address class="fs-sm">
                    Sunset Str 598<br>
                    Melbourne<br>
                    Australia, 11-671<br><br>
                    <i class="fa fa-phone"></i> (999) 888-77777<br>
                    <i class="fa fa-envelope-o"></i> <a href="javascript:void(0)">company@example.com</a>
                  </address>
                </div>
              </div>
              <!-- END Billing Address -->
            </div>
            <div class="col-sm-6">
              <!-- Shipping Address -->
              <div class="block block-rounded">
                <div class="block-header block-header-default">
                  <h3 class="block-title">Shipping Address</h3>
                </div>
                <div class="block-content">
                  <div class="fs-4 mb-1">Helen Jacobs</div>
                  <address class="fs-sm">
                    Sunrise Str 620<br>
                    Melbourne<br>
                    Australia, 11-587<br><br>
                    <i class="fa fa-phone"></i> (999) 888-55555<br>
                    <i class="fa fa-envelope-o"></i> <a href="javascript:void(0)">company@example.com</a>
                  </address>
                </div>
              </div>
              <!-- END Shipping Address -->
            </div>
          </div>
          <!-- END Customer -->

          <!-- Log Messages -->
          <div class="block block-rounded">
            <div class="block-header block-header-default">
              <h3 class="block-title">Log Messages</h3>
            </div>
            <div class="block-content">
              <div class="table-responsive">
                <table class="table table-borderless table-striped table-vcenter fs-sm">
                  <tbody>
                    <tr>
                      <td class="fs-base" style="width: 80px;">
                        <span class="badge bg-primary">Order</span>
                      </td>
                      <td style="width: 220px;">
                        <span class="fw-semibold">January 17, 2020 - 18:00</span>
                      </td>
                      <td>
                        <a href="javascript:void(0)">Support</a>
                      </td>
                      <td class="text-success"><strong>Order Completed</strong></td>
                    </tr>
                    <tr>
                      <td class="fs-base">
                        <span class="badge bg-primary">Order</span>
                      </td>
                      <td>
                        <span class="fw-semibold">January 17, 2020 - 17:36</span>
                      </td>
                      <td>
                        <a href="javascript:void(0)">Support</a>
                      </td>
                      <td class="text-warning"><strong>Preparing Order</strong></td>
                    </tr>
                    <tr>
                      <td class="fs-base">
                        <span class="badge bg-success">Payment</span>
                      </td>
                      <td>
                        <span class="fw-semibold">January 16, 2020 - 18:10</span>
                      </td>
                      <td>
                        <a href="javascript:void(0)">John Parker</a>
                      </td>
                      <td class="text-success"><strong>Payment Completed</strong></td>
                    </tr>
                    <tr>
                      <td class="fs-base">
                        <span class="badge bg-danger">Email</span>
                      </td>
                      <td>
                        <span class="fw-semibold">January 16, 2020 - 10:35</span>
                      </td>
                      <td>
                        <a href="javascript:void(0)">Support</a>
                      </td>
                      <td class="text-danger"><strong>Missing payment details. Email was sent and awaiting for payment before processing</strong></td>
                    </tr>
                    <tr>
                      <td class="fs-base">
                        <span class="badge bg-primary">Order</span>
                      </td>
                      <td>
                        <span class="fw-semibold">January 15, 2020 - 14:59</span>
                      </td>
                      <td>
                        <a href="javascript:void(0)">Support</a>
                      </td>
                      <td>All products are available</td>
                    </tr>
                    <tr>
                      <td class="fs-base">
                        <span class="badge bg-primary">Order</span>
                      </td>
                      <td>
                        <span class="fw-semibold">January 15, 2020 - 14:29</span>
                      </td>
                      <td>
                        <a href="javascript:void(0)">John Parker</a>
                      </td>
                      <td>Order Submitted</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <!-- END Log Messages -->
        </div>
        <!-- END Page Content -->
      </main>
      <!-- END Main Container -->
      
      <%
                }
            } catch (Exception e) {
                out.println("error");
            }
        %>  

    <%@include file="include/footer.jsp"%>
