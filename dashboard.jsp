<!DOCTYPE html>
    <%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
    <%@ page import="java.sql.*" %>
    <%
    if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
    response.sendRedirect("index.jsp");
    }
    String username = (String)session.getAttribute("sessionusername");
    String password = (String)session.getAttribute("sessionpassword");
    String nama     = (String)session.getAttribute("sessionnama");
    %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tugas Akhir Agus Hermawan</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets_binary_admin/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets_binary_admin/assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets_binary_admin/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets_binary_admin/assets/css/custom.css" rel="stylesheet" />
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>

<div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><%=username%></a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;">Anda login sebagai <strong><%=nama%></strong> &nbsp; <a href="admin_logout.jsp" class="btn btn-danger square-btn-adjust"><i class="fa fa-power-off"></i> Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                <li class="text-center">
                    <img src="assets_binary_admin/assets/img/agus.jpg" class="user-image img-responsive"/>
                    </li>
                
                    
                    <li>
                        <a class="active-menu"  href="index-admin.jsp?link=home"><i class="fa fa-home fa-3x"></i> Home </a>
                    </li>
                     <li>
                        <a  href="index-admin.jsp?link=user"><i class="fa fa-user fa-3x"></i> User </a>
                    </li>
                    <li>
                        <a  href="index-admin.jsp?link=toko"><i class="fa fa-institution fa-3x"></i> Toko </a>
                    </li>
                    <li>
                        <a   href="index-admin.jsp?link=barang"><i class="fa fa-briefcase fa-3x"></i> Barang </a>
                    </li>   
                      <li  >
                        <a  href="index-admin.jsp?link=kurir"><i class="fa fa-credit-card fa-3x"></i> Kurir </a>
                    </li>
                    <li>
                        <a  href="index-admin.jsp?link=lokasi"><i class="fa fa-map-marker fa-3x"></i> Lokasi </a>
                    </li>
                    <li>
                        <a  href="index-admin.jsp?link=pengiriman"><i class="fa fa-rocket fa-3x"></i> Pengiriman </a>
                    </li>
                    <li>
                        <a  href="index-admin.jsp?link=transaksi"><i class="fa fa-shopping-cart fa-3x"></i> Transaksi </a>
                    </li>
                    
                                       
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>

                                </ul>
                               
                            </li>
                        </ul>
                      </li>  
                  <li  >
                        <a  href="blank.html"><i class="fa fa-square-o fa-3x"></i> Blank Page</a>
                    </li>   
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                            
                <div class="row">
                    <div class="col-lg-12">
                    <%
                    String li=request.getParameter("link");
                    %>
                    <jsp:include page="menu-admin.jsp" flush="true">
                    <jsp:param name="menu" value="<%=li%>"/>
                    </jsp:include>
                    </div>
                </div>
            </div>
        </div>
</div>


    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets_binary_admin/assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets_binary_admin/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets_binary_admin/assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets_binary_admin/assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets_binary_admin/assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets_binary_admin/assets/js/custom.js"></script>
    
   
</body>
</html>