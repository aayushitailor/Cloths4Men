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
            <%@include file="header.jsp" %>
            <div class="site-blocks-cover" style="background-image: url(images/men5.jpg);" data-aos="fade">
                <div class="container">
                    <div class="row align-items-start align-items-md-center justify-content-end">
                        <div class="col-md-4 text-center text-md-left pt-5 pt-md-0">
                            <h1 class="mb-3" style="color: black">Finding Your Perfect Cloths</h1>
                            <div class="intro-text text-center text-md-left">

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-section site-section-sm site-blocks-1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="">
                            <div class="icon mr-4 align-self-start">
                                <span class="icon-truck"></span>
                            </div>
                            <div class="text">
                                <h2 class="text-uppercase">Free Shipping</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at iaculis quam. Integer
                                    accumsan tincidunt fringilla.</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="100">
                            <div class="icon mr-4 align-self-start">
                                <span class="icon-refresh2"></span>
                            </div>
                            <div class="text">
                                <h2 class="text-uppercase">Free Returns</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at iaculis quam. Integer
                                    accumsan tincidunt fringilla.</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="200">
                            <div class="icon mr-4 align-self-start">
                                <span class="icon-help"></span>
                            </div>
                            <div class="text">
                                <h2 class="text-uppercase">Customer Support</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at iaculis quam. Integer
                                    accumsan tincidunt fringilla.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-section site-blocks-2">
                <div class="container">
                    <div class="row">
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
                                       String str = "select * from category";
                                       resultSet = st.executeQuery(str);
                                       ResultSetMetaData rsmd = resultSet.getMetaData();
                
                                       int columnsNumber = rsmd.getColumnCount();
                        %>
                        <%
                        while (resultSet.next()) {  
                        System.out.println("daaaaa" + resultSet.getString("name"));
                        %>        

                        <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
                            <!--<a class="block-2-item" href="#">-->
<!--                                <figure class="image">
                                    <img src="images/women.jpg" alt="" class="img-fluid" style="width: 100px; height: 100px">
                                </figure>-->
                                <div class="row">
                                    <img src="images/menu.png" style="width: 25px; height: 25px; margin-right: 10px"/>
                                    <h4><%=resultSet.getString("name") %></h4>
                                </div>
                            <!--</a>-->

                        </div>

                        <% 
                            System.out.println("");
                        }
                        %>
                        <%
                                    }
                                    catch(SQLException e){
                                            System.out.println("SQLException: " + e);
                                    }
                        %>   

                    </div>
                </div>

            </div>
            <%@include file="shop.jsp" %>

            <div class="site-section block-3 site-blocks-2 bg-light">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-7 site-section-heading text-center pt-4">
                            <h2>Featured Products</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="nonloop-block-3 owl-carousel">
                                <div class="item">
                                    <div class="block-4 text-center">
                                        <figure class="block-4-image">
                                            <img src="images/cloth_1.jpg" alt="Image placeholder" class="img-fluid">
                                        </figure>
                                        <div class="block-4-text p-4">
                                            <h3><a href="#">Tank Top</a></h3>
                                            <p class="mb-0">Finding perfect t-shirt</p>
                                            <p class="text-primary font-weight-bold">$50</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="block-4 text-center">
                                        <figure class="block-4-image">
                                            <img src="images/shoe_1.jpg" alt="Image placeholder" class="img-fluid">
                                        </figure>
                                        <div class="block-4-text p-4">
                                            <h3><a href="#">Corater</a></h3>
                                            <p class="mb-0">Finding perfect products</p>
                                            <p class="text-primary font-weight-bold">$50</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="block-4 text-center">
                                        <figure class="block-4-image">
                                            <img src="images/cloth_2.jpg" alt="Image placeholder" class="img-fluid">
                                        </figure>
                                        <div class="block-4-text p-4">
                                            <h3><a href="#">Polo Shirt</a></h3>
                                            <p class="mb-0">Finding perfect products</p>
                                            <p class="text-primary font-weight-bold">$50</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="block-4 text-center">
                                        <figure class="block-4-image">
                                            <img src="images/cloth_3.jpg" alt="Image placeholder" class="img-fluid">
                                        </figure>
                                        <div class="block-4-text p-4">
                                            <h3><a href="#">T-Shirt Mockup</a></h3>
                                            <p class="mb-0">Finding perfect products</p>
                                            <p class="text-primary font-weight-bold">$50</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="block-4 text-center">
                                        <figure class="block-4-image">
                                            <img src="images/shoe_1.jpg" alt="Image placeholder" class="img-fluid">
                                        </figure>
                                        <div class="block-4-text p-4">
                                            <h3><a href="#">Corater</a></h3>
                                            <p class="mb-0">Finding perfect products</p>
                                            <p class="text-primary font-weight-bold">$50</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-section block-8">
                <div class="container">
                    <div class="row justify-content-center  mb-5">
                        <div class="col-md-7 site-section-heading text-center pt-4">
                            <h2>Big Sale!</h2>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-md-12 col-lg-7 mb-5">
                            <a href="#"><img src="images/blog_1.jpg" alt="Image placeholder" class="img-fluid rounded"></a>
                        </div>
                        <div class="col-md-12 col-lg-5 text-center pl-md-5">
                            <h2><a href="#">50% less in all items</a></h2>
                            <p class="post-meta mb-4">By <a href="#">Carl Smith</a> <span class="block-8-sep">&bullet;</span>
                                September 3, 2018</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam iste dolor accusantium facere
                                corporis ipsum animi deleniti fugiat. Ex, veniam?</p>
                            <p><a href="#" class="btn btn-primary btn-sm">Shop Now</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="footer.jsp" %>
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