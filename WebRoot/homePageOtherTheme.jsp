<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>homePage</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="pragma" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="expires" content="0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css" href="./css/constant.css">
<link rel="stylesheet" type="text/css" href="assets/css/amazeui.css">
<link rel="stylesheet" type="text/css" href="./assets/css/admin.css">
<link rel="stylesheet" type="text/css" href="./assets/css/app.css">

</head>

<body>

	<!-- 顶部导航栏 -->
	<header class="am-topbar am-topbar-inverse admin-header">
	<div class="am-topbar-brand" style="padding-top: 2.4rem;">
		<a href="javascript:;" class="tpl-logo"> <img src="image/logo.png" alt="">
		</a>
	</div>

	<!-- 打开和关闭侧边栏 --> <!--<div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

    </div>--> <!--<button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
            data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>-->

	<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
		<ul
			class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
			<li class="am-dropdown" data-am-dropdown='' >
				<a class="am-dropdown-toggle tpl-header-list-link"
				href="javascript:;" data-am-dropdown-toggle =''> 
				<span class="tpl-header-list-user-nick font_colors_constant_14" >${user.name }</span>
				<span class="tpl-header-list-user-ico"> <img src="image/user06.png"></span>
			    </a>
				<ul class="am-dropdown-content">
					<!-- <li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li> -->
					<li><a href="#"  style="color: #666666;font-size:14px;"><span class="am-icon-cog icon_colors" ></span> 修改密码</a></li>
					<li><a href="#" style="color: #666666;font-size:14px;"><span class="am-icon-power-off icon_colors" ></span> 退出</a></li>
				</ul>
			</li>
		</ul>
	</div>
	</header>
	
	<!-- 网页主体内容 -->
	<div class="tpl-page-container tpl-page-header-fixed">
		<!-- 左侧菜单 -->
		<div class="tpl-left-nav tpl-left-nav-hover">
		
		
		</div>
	</div>


	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>

</body>
</html>
