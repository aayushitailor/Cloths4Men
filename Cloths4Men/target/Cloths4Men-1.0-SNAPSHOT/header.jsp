<%-- Document : index Created on : 11 Apr 2023, 18:59:29 Author : aayushitailor --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
      <html lang="en">

      <head>
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
          <header class="site-navbar" role="banner">
            <div class="site-navbar-top">
              <div class="container">
                <div class="row align-items-center">

                  <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
                    <form action="" class="site-block-top-search">
                      <span class="icon icon-search2"></span>
                      <input type="text" class="form-control border-0" placeholder="Search">
                    </form>
                  </div>

                  <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                    <div class="site-logo">
                      <a href="index.jsp" class="js-logo-clone">Cloths4Men</a>
                    </div>
                  </div>

                  <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                    <div class="site-top-icons">
                      <ul>
                        <li><a href="login.jsp"><span class="icon icon-person"></span></a></li>
                        <li><a href="#"><span class="icon icon-heart-o"></span></a></li>
                        <li>
                          <a href="cart.jsp" class="site-cart">
                            <span class="icon icon-shopping_cart"></span>
                            <span class="count">2</span>
                          </a>
                        </li>
                        <li class="d-inline-block d-md-none ml-md-0"><a href="#"
                            class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                      </ul>
                    </div>
                  </div>

                </div>
              </div>
            </div>
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <div class="container">
                <ul class="site-menu js-clone-nav d-none d-md-block">
                  <li class="has-children active">
                    <a href="index.jsp">Home</a>
                    <ul class="dropdown">
                      <li><a href="#">Menu One</a></li>
                      <li><a href="#">Menu Two</a></li>
                      <li><a href="#">Menu Three</a></li>
                      <li class="has-children">
                        <a href="#">Sub Menu</a>
                        <ul class="dropdown">
                          <li><a href="#">Menu One</a></li>
                          <li><a href="#">Menu Two</a></li>
                          <li><a href="#">Menu Three</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <li class="has-children">
                    <a href="about.jsp">About</a>
                    <ul class="dropdown">
                      <li><a href="#">Menu One</a></li>
                      <li><a href="#">Menu Two</a></li>
                      <li><a href="#">Menu Three</a></li>
                    </ul>
                  </li>
                  <li><a href="shop.jsp">Shop</a></li>
                  <li><a href="contact.jsp">Contact</a></li>
                </ul>
              </div>
            </nav>
          </header>
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