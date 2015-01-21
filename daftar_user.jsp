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
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Super Market Online</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							<a href="#"> Bantuan </a>
						</li>
						<li>
							<a href="daftar_user.jsp?link=home"> Daftar </a>
						</li>
						<li>
							<a href="user_login.jsp?link=home"> Login </a>
						</li>
						<!--
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Action</a>
								</li>
								<li>
									<a href="#">Another action</a>
								</li>
								<li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">One more separated link</a>
								</li>
							</ul>
						</li>
						-->
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input class="form-control" type="text">
						</div> <button type="submit" class="btn btn-default"><i class="fa fa-search"></i> Cari </button>
					</form>
					
				</div>
				
			</nav>	
		</div>
	</div>
        
	<div class="container" style="margin-top: 74px;">
	<div class="row clearfix">
		<div class="col-md-8 col-md-offset-2 column">
                    <div class="panel panel-success">
                        <div class="panel panel-heading text-center">
                            <h3> Daftar </h3>
                            <h5> Silahkan isi informasi mengenai diri anda di bawah ini. </h5>
                        </div>
                        <div class="panel panel-body">
                            <form role="form">
				<div class="form-group">
					 <label for="exampleInputEmail1"> User Name </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
				<div class="form-group">
					 <label for="exampleInputEmail1"> Nama </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputEmail1"> Alamat </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputEmail1"> Email </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputPassword1"> Password </label><input class="form-control" id="exampleInputPassword1" type="password" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputEmail1"> Tanggal Lahir </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputEmail1"> Jenis Kelamin </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                
				</div> <button type="submit" class="btn btn-success ">Daftar</button>
			</form>
                        </div>
                    </div>
		</div>
	</div>
</div>
	
	<div class="row clearfix">
		<div class="col-md-12 column">
		puter
		</div>
	</div>
    <script>
    $("#commentForm").validate();
    </script>
</body>
</html>
