<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!--  首页-->
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
<!-- 一个点代表当前路径，两个点代表上级路径。一个点可以连同它后面的/不用写。两个点必须写/ -->
<link rel="stylesheet" type="text/css" href="<%=path %>/css/constant.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/assets/css/amazeui.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/assets/css/admin.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/assets/css/app.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/assets/css/fullcalendar.min.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/assets/css/fullcalendar.print.css" media='print'>

</head>

<body>


	<div class="am-g tpl-g">
		<!-- 头部 -->
		<jsp:include flush="true" page="top.jsp"></jsp:include>

		<div class="tpl-page-container">

			<!-- 侧边导航栏 -->

			<jsp:include flush="true" page="sidebarNav.jsp"></jsp:include>

			<!--  右侧内容-->
			<div class="tpl-content-wrapper" id="tpl-content-wrapper">
				<div class="tpl-content-page-title">Amaze UI 表单</div>
				<ol class="am-breadcrumb">
					<li><a href="#" class="font_click_colors_16"><span
							class="icon_colors am-icon-home am-icon-sm "></span>首页</a></li>
					<li class="am-active font_colors_constant_16">表单</li>
					<!--< li class="am-active font_colors_constant_16">Amaze UI 表单</li> -->
				</ol>

				<!-- 日历 -->
				<!--  -->
				<div class="am-cf" id="home-calendar">
					<div class="tpl-calendar-box">
						<div id="calendar" class=""></div>
					</div>

				</div>


			</div>
		</div>

	</div>


	<!-- 弹出层  点击日程-->
	<div class="am-modal am-modal-no-btn" id="calendar-edit-box">
		<div class="am-modal-dialog tpl-model-dialog">
			<div class="am-modal-hd">
				<a href="javascript: void(0)"
					class="am-close edit-box-close am-close-spin" data-am-modal-close>&times;</a>
			</div>
			<div class="am-modal-bd tpl-am-model-bd am-cf">

				<form class="am-form tpl-form-border-form">
					<div class="am-form-group am-u-sm-12">
						<!-- <label for="user-name"
							class="am-u-sm-12 am-form-label am-text-left">标题 <span
							class="tpl-form-line-small-title">Title</span></label> -->

						<div class="am-modal-hd" id="title">Amaze UI</div>
						<div class="am-modal-bd calendar-edit-box-title" id="user-name" style='text-align: left;'></div>
						<!-- <div class="am-u-sm-12">
							<input type="text"
								class="tpl-form-input am-margin-top-xs calendar-edit-box-title"
								id="user-name" placeholder="" disabled>
						</div> -->
					</div>
				</form>

			</div>
		</div>
	</div>

	
	<script src="<%=path %>/assets/js/jquery.min.js"></script>
	 <script src="<%=path %>/assets/js/moment.js"></script>
	<script src="<%=path %>/assets/js/amazeui.min.js"></script>
	<script src="<%=path %>/assets/js/fullcalendar.min.js"></script>
	<script src="<%=path %>/js/homePage.js"></script>
</body>
</html>
