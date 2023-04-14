<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@page import="java.sql.*" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
      <link rel="stylesheet" href="fonts/icomoon/style.css">

      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/magnific-popup.css">
      <link rel="stylesheet" href="css/jquery-ui.css">
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">


      <link rel="stylesheet" href="css/aos.css">

      <link rel="stylesheet" href="css/style.css">

    </head>

    <body>

      <div class="site-wrap">
        <div class="site-section">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">Login</h2>
              </div>
              <div class="col-md-7">
                <form action="./LoginServlet" method="post">
                  <div class="p-3 p-lg-5 border">
                    <div class="form-group row">
                      <div class="col-md-12">
                        <label for="c_email" class="text-black">Email <span class="text-danger">*</span></label>
                        <input type="email" class="form-control" id="c_email" name="c_email" placeholder="">
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-md-12">
                        <label for="c_email" class="text-black">Password <span class="text-danger">*</span></label>
                        <input type="password" class="form-control" id="c_pwd" name="c_pwd" placeholder="">
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-lg-12">
                        <input type="submit" class="btn btn-primary btn-lg btn-block" value="Login">
                      </div>
                    </div>
                    <div class="form-group row">
                      <div align="center" class="col-lg-12">
                        <label for="c_email" class="text-black">Don't have an account? <a href="register.html"> Create
                            New Account </a></label>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

      <script src="js/jquery-3.3.1.min.js"></script>
      <script src="js/jquery-ui.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/owl.carousel.min.js"></script>
      <script src="js/jquery.magnific-popup.min.js"></script>
      <script src="js/aos.js"></script>

      <script src="js/main.js"></script>

    </body>

    </html>