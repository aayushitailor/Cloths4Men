<%-- 
    Document   : product
    Created on : 14-Apr-2023, 4:55:07 pm
    Author     : chandnipatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
   Connection con = null;
   Statement st = null;
   ResultSet resultSet = null;
%>
     
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
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
    
    <div id="page-container" class="sidebar-o sidebar-dark enable-page-overlay side-scroll page-header-fixed main-content-narrow">
   
      <!-- Sidebar -->
    <%@include file="include/sidebar.jsp"%>
      <!-- END Sidebar -->

      <!-- Header -->
    <%@include file="include/header.jsp"%>
      
      <!-- END Header -->

      <!-- Main Container -->
      <main id="main-container">
        <!-- Page Content -->
        <div class="content">
          <!-- Quick Overview -->
          <div class="row items-push">
            <div class="col-6 col-lg-3">
              <a class="block block-rounded block-link-shadow text-center h-100 mb-0" href="be_pages_ecom_orders.html">
                <div class="block-content py-5">
                  <div class="fs-3 fw-semibold text-primary mb-1">
                      <%
                        int i=0;
                        try{
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:8889/cloths4men?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
                            Statement stmt = con.createStatement();  
                            ResultSet rs = stmt.executeQuery("select * from orders where orderstatus=0");   
                            while (rs.next()) 
                            {
                            i++;
                            
                        %>
                        <%=i%>
                      <% 
                        }}  
                        catch (Exception e) 
                       {  
                        out.println("error");  
                    }  
                    %> 
                  
                  </div>
                  <p class="fw-semibold fs-sm text-muted text-uppercase mb-0">
                    Pending Orders
                  </p>
                </div>
              </a>
            </div>
            <div class="col-6 col-lg-3">
              <a class="block block-rounded block-link-shadow text-center h-100 mb-0" href="javascript:void(0)">
                <div class="block-content py-5">
                  <div class="fs-3 fw-semibold text-success mb-1">26%</div>
                  <p class="fw-semibold fs-sm text-muted text-uppercase mb-0">
                    Profit
                  </p>
                </div>
              </a>
            </div>
            <div class="col-6 col-lg-3">
              <a class="block block-rounded block-link-shadow text-center h-100 mb-0" href="javascript:void(0)">
                <div class="block-content py-5">
                  <div class="fs-3 fw-semibold mb-1">126</div>
                  <p class="fw-semibold fs-sm text-muted text-uppercase mb-0">
                    Orders Today
                  </p>
                </div>
              </a>
            </div>
            <div class="col-6 col-lg-3">
              <a class="block block-rounded block-link-shadow text-center h-100 mb-0" href="javascript:void(0)">
                <div class="block-content py-5">
                  <div class="fs-3 fw-semibold mb-1">$16.485</div>
                  <p class="fw-semibold fs-sm text-muted text-uppercase mb-0">
                    Earnings Today
                  </p>
                </div>
              </a>
            </div>
          </div>
          <!-- END Quick Overview -->

          <!-- Orders Overview -->
          <div class="block block-rounded">
            <div class="block-header block-header-default">
              <h3 class="block-title">Orders Overview</h3>
              <div class="block-options">
                <button type="button" class="btn-block-option" data-toggle="block-option" data-action="state_toggle" data-action-mode="demo">
                  <i class="si si-refresh"></i>
                </button>
              </div>
            </div>
            <div class="block-content block-content-full">
              <!-- Chart.js is initialized in js/pages/be_pages_ecom_dashboard.min.js which was auto compiled from _js/pages/be_pages_ecom_dashboard.js) -->
              <!-- For more info and examples you can check out http://www.chartjs.org/docs/ -->
              <canvas id="js-chartjs-overview" style="height: 420px;"></canvas>
            </div>
          </div>
          <!-- END Orders Overview -->

          <!-- Top Products and Latest Orders -->
          <div class="row">
            <div class="col-xl-6">
              <!-- Top Products -->
              <div class="block block-rounded">
                <div class="block-header block-header-default">
                  <h3 class="block-title">Top Products</h3>
                  <div class="block-options">
                    <button type="button" class="btn-block-option" data-toggle="block-option" data-action="state_toggle" data-action-mode="demo">
                      <i class="si si-refresh"></i>
                    </button>
                  </div>
                </div>
                <div class="block-content">
                  <table class="table table-borderless table-striped table-vcenter fs-sm">
                    <tbody>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.965</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">Diablo III</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.154</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">Control</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.523</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">Minecraft</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.423</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">Hollow Knight</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.391</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">Sekiro: Shadows Die Twice</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.218</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">NBA 2K20</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.995</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">Forza Motorsport 7</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.761</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">Minecraft</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.860</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">Dark Souls III</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center" style="width: 100px;">
                          <a class="fw-semibold" href="be_pages_ecom_product_edit.html">PID.952</a>
                        </td>
                        <td>
                          <a class="fw-medium" href="be_pages_ecom_product_edit.html">Age of Mythology</a>
                        </td>
                        <td class="d-none d-sm-table-cell text-end text-nowrap">
                          <div class="text-warning">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <!-- END Top Products -->
            </div>
            <div class="col-xl-6">
              <!-- Latest Orders -->
              <div class="block block-rounded">
                <div class="block-header block-header-default">
                  <h3 class="block-title">Latest Orders</h3>
                  <div class="block-options">
                    <button type="button" class="btn-block-option" data-toggle="block-option" data-action="state_toggle" data-action-mode="demo">
                      <i class="si si-refresh"></i>
                    </button>
                  </div>
                </div>
                <div class="block-content">
                  <table class="table table-borderless table-striped table-vcenter fs-sm">
                    <tbody>
                      <tr>
                        <td class="fw-semibold text-center" style="width: 100px;">
                          <a href="be_pages_ecom_order.html">ORD.7116</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">Jeffrey Shaw</a>
                        </td>
                        <td>
                          <span class="badge bg-success">Delivered</span>
                        </td>
                        <td class="fw-semibold text-end">$320,00</td>
                      </tr>
                      <tr>
                        <td class="fw-semibold text-center">
                          <a href="be_pages_ecom_order.html">ORD.7115</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">Amber Harvey</a>
                        </td>
                        <td>
                          <span class="badge bg-danger">Canceled</span>
                        </td>
                        <td class="fw-semibold text-end">$528,00</td>
                      </tr>
                      <tr>
                        <td class="fw-semibold text-center">
                          <a href="be_pages_ecom_order.html">ORD.7114</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">David Fuller</a>
                        </td>
                        <td>
                          <span class="badge bg-success">Delivered</span>
                        </td>
                        <td class="fw-semibold text-end">$834,00</td>
                      </tr>
                      <tr>
                        <td class="fw-semibold text-center">
                          <a href="be_pages_ecom_order.html">ORD.7113</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">Susan Day</a>
                        </td>
                        <td>
                          <span class="badge bg-warning">Processing</span>
                        </td>
                        <td class="fw-semibold text-end">$495,00</td>
                      </tr>
                      <tr>
                        <td class="fw-semibold text-center">
                          <a href="be_pages_ecom_order.html">ORD.7112</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">Albert Ray</a>
                        </td>
                        <td>
                          <span class="badge bg-success">Delivered</span>
                        </td>
                        <td class="fw-semibold text-end">$127,00</td>
                      </tr>
                      <tr>
                        <td class="fw-semibold text-center">
                          <a href="be_pages_ecom_order.html">ORD.7111</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">Barbara Scott</a>
                        </td>
                        <td>
                          <span class="badge bg-warning">Processing</span>
                        </td>
                        <td class="fw-semibold text-end">$598,00</td>
                      </tr>
                      <tr>
                        <td class="fw-semibold text-center">
                          <a href="be_pages_ecom_order.html">ORD.7110</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">Carol White</a>
                        </td>
                        <td>
                          <span class="badge bg-success">Delivered</span>
                        </td>
                        <td class="fw-semibold text-end">$729,00</td>
                      </tr>
                      <tr>
                        <td class="fw-semibold text-center">
                          <a href="be_pages_ecom_order.html">ORD.7109</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">Amber Harvey</a>
                        </td>
                        <td>
                          <span class="badge bg-warning">Processing</span>
                        </td>
                        <td class="fw-semibold text-end">$256,00</td>
                      </tr>
                      <tr>
                        <td class="fw-semibold text-center">
                          <a href="be_pages_ecom_order.html">ORD.7108</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">Brian Stevens</a>
                        </td>
                        <td>
                          <span class="badge bg-success">Delivered</span>
                        </td>
                        <td class="fw-semibold text-end">$999,00</td>
                      </tr>
                      <tr>
                        <td class="fw-semibold text-center">
                          <a href="be_pages_ecom_order.html">ORD.7107</a>
                        </td>
                        <td class="d-none d-sm-table-cell">
                          <a class="fw-medium" href="be_pages_ecom_customer.html">Carol White</a>
                        </td>
                        <td>
                          <span class="badge bg-danger">Canceled</span>
                        </td>
                        <td class="fw-semibold text-end">$238,00</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <!-- END Latest Orders -->
            </div>
          </div>
          <!-- END Top Products and Latest Orders -->
        </div>
        <!-- END Page Content -->
      </main>
      <!-- END Main Container -->
    </div>
    <!-- END Page Container -->

    <!--
      Dashmix JS

      Core libraries and functionality
      webpack is putting everything together at assets/_js/main/app.js
    -->
    <script src="assets/js/dashmix.app.min.js"></script>

    <!-- Page JS Plugins -->
    <script src="assets/js/plugins/chart.js/chart.umd.js"></script>

    <!-- Page JS Code -->
    <script src="assets/js/pages/be_pages_ecom_dashboard.min.js"></script>
  </body>
</html>
