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
              <h3 class="block-title">Add Brand</h3>
              
              
            </div>
            <div class="block-content">
             
              <div class="table-responsive">
                  <form action="./AddCategory" method="post">
                    <div class="card-body">
                       <div class="mb-4">
                          <h5 class="mb-3">Brand Name</h5>
                          <input type="text" class="form-control" placeholder="Enter Brand" name="userName" id="userName">
                       </div>
<!--                       <div class="mb-4">
                          <h5 class="mb-3">Category images</h5>
                          <input id="fancy-file-upload" type="file" name="files" accept=".jpg, .png, image/jpeg, image/png" multiple>
                       </div>-->

                        <div class="card-body">
                           <div class="d-flex align-items-center justify-content-between">
                              <button class="btn btn-success px-4" type="submit">Save</button>
                              <button type="button" class="btn btn-danger px-4">Cancel</button>
                           </div>
                        </div>

                    </div>
                </form>
              </div>
            </div>
          </div>
          <!-- END Full Table -->

        </div>
        <!-- END Page Content -->
      </main>
      <!-- END Main Container -->

      
    <%@include file="include/footer.jsp"%>

