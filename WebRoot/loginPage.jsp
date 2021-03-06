<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="css/constant.css">
<link rel="stylesheet" href="css/login.css">

<!-- Modernizr JS -->
<!-- FOR IE9 below -->
<!--[if lt IE 9]-->
<script src="assets/js/respond.min.js"></script>
<!-- [endif] -->
<script type="text/javascript">
	function submitLogin(){
		document.getElementById("login_from").submit();
	}
</script>

<title>LoginPage</title>
</head>
<body>
	<div class="container">
		<!-- 网页大标题 -->
		<div class="row" style="margin-top: 6%;">
			<div class="col-md-12 text-center">
				<ul class="menu">
					<li class="vrf_title">VRF Selector Manager</li>
				</ul>
			</div>
		</div>

		<!-- 登录表单 -->
		<div class="row" style="margin-top: 2%;">
			<div class="col-md-4 col-md-offset-4">
				<!-- Start Sign In Form -->
				<form id="login_from" action="Login_login.do" method="post"
					class="fh5co-form animate-box">
					<h4 class="form_text"></h4>
					<div class="form-group">
						<label for="username" class="sr-only">Username</label> <input
							type="text" name="email" class="form-control" id="username"
							placeholder="Username" autocomplete="off" />
					</div>
					<div class="form-group">
						<label for="password" class="sr-only">Password</label> <input
							type="password" name="password" class="form-control"
							id="password" placeholder="Password" autocomplete="off" />
					</div>
					<div class="form-group" style="margin-bottom: 10px;">
						<label for="remember"><input type="checkbox" id="remember"
							class="form_text"> Remember Me</label>
					</div>
					<!-- 错误提示 -->
					<div class="form-group">
						<label class="font_colors_warn"> ${errorMSG} </label>
					</div>

					<!--  <div class="form-group">
						<p>
							Not registered? <a href="sign-up.html">Sign Up</a> | <a
								href="forgot.html">Forgot Password?</a>
						</p>
					</div>  -->
					<div class="form-group">
						<input type="submit" value="LOGIN" onclick="submitLogin()"
							class="btn btn-primary main_colors_bg">
					</div>
					
				</form>
				<!-- END Sign In Form -->

			</div>
		</div>
		<!-- 底部文字 -->
		<div class="row" style="padding-top: 60px; clear: both;">
			<div class="col-md-12 text-center">
				<p>
					<small>&copy; Innovation makes the future. <label
						class="font_colors">GREE</label> - Welcome <label
						class="font_colors">VRF Selector</label></small>
				</p>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="assets/js/jquery-3.0.0.min.js"></script>
	<!-- Bootstrap -->
	<script src="assets/js/amazeui.min.js"></script>
	<!-- Placeholder -->
	<script src="assets/js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="assets/js/main.js"></script>

</body>
</html>