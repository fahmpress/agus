<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets_binary_admin/assets/css/bootstrap.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets_binary_admin/assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    
     <div class="alert alert-danger">
        Maaf, akun yang anda masukan salah! <a href="login-admin.jsp" class="alert-link"> Login </a>.
     </div>
    
    <div class="row">
    <div class="col-md-4 col-md-offset-4" style="margin-top: 150px;">                       
                    <div class="panel panel-primary text-center no-boder bg-color-green">
                        <div class="panel-footer back-footer-green">
                           Login Admin
                        </div>
                        <div class="panel-body">
                        <div class="col-md-10 col-md-offset-1">
                            <form class="cmxform" method="post" role="form" action="loginproses.jsp" id="commentForm">
                                <div class="form-group">
                                    <input class="form-control" name="user" minlength="4" type="text" placeholder="Username" required>
                                </div>
                                <div class="form-group">
                                    <input name="pass" type="password" class="form-control" id="cname" minlength="4" placeholder="Password" required>
                                </div>
                                <input type="submit" value="Login" class="btn btn-danger btn-block">
                                </div>
                            </form>
                        </div>
                    </div>                        
                        </div>
    </div>
    
    
    
    
    <script>
    $("#commentForm").validate();
    </script>
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets_binary_admin/assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets_binary_admin/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets_binary_admin/assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets_binary_admin/assets/js/custom.js"></script>
    
</body>
</html>