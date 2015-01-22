<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Tugas Akhir Agus Hermawan</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

	<!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
	<!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
	<!--script src="js/less-1.3.3.min.js"></script-->
	<!--append ?#!watch? to the browser URL, then refresh the page. -->
	
	<link href="asset-layoutit/css/bootstrap.min.css" rel="stylesheet">
	<link href="asset-layoutit/css/style.css" rel="stylesheet">
	<link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="custom.css" rel="stylesheet">

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="img/favicon.png">
  
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
</head>

<body>
<div class="container">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="index.jsp">Super Market Online</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							<a href="#"> Bantuan </a>
						</li>
						<li>
							<a href="daftar_user.jsp"> Daftar </a>
						</li>
						<li>
							<a href="index.jsp?link=login"> Login </a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input class="form-control" type="text">
						</div> <button type="submit" class="btn btn-default"><i class="fa fa-search"></i> Cari </button>
					</form>
					
				</div>
				
			</nav>
    
	<div class="row clearfix">
		<div class="col-md-12 column">
                    <%
                    if (request.getParameter("link")==null){
                    %>
                    <%@include file="index_user.jsp" %>
                    <% } else { %>
                    <%@include file="menu-user.jsp" %>
                    <% } %>
		</div>
	</div>
	
	
</div>
<br />
<footer>
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © Supermarket Online | Agus Hermawan 2015. All right reserved. </p>
            <div class="pull-right">
                <div class="text-center center-block">
                <a href="https://www.facebook.com/pbs.zoestho"><i id="social" class="fa fa-facebook-square fa-3x"></i></a>
	            <a href="#"><i id="social" class="fa fa-twitter-square fa-3x"></i></a>
	            <a href="#"><i id="social" class="fa fa-google-plus-square fa-3x"></i></a>
	            <a href="mailto:agushermawan93@gmail.com"><i id="social" class="fa fa-envelope-square fa-3x"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer> 
</body>
</html>
