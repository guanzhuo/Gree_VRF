<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!--  首页-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>accountList</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="pragma" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="expires" content="0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 一个点代表当前路径，两个点代表上级路径。一个点可以连同它后面的/不用写。两个点必须写/ -->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/constant.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/assets/css/amazeui.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/assets/css/admin.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/assets/css/app.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/assets/css/fullcalendar.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/assets/css/jquery.dataTable.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/assets/css/fullcalendar.print.css"
	media='print'>
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
					<li>
						<a href="#" class="font_click_colors_16">
							<span class="icon_colors am-icon-home am-icon-sm "></span>
							系统管理
						</a>
					</li>
					<li class="am-active font_colors_constant_16">账号管理</li>
					<!--< li class="am-active font_colors_constant_16">Amaze UI 表单</li> -->
				</ol>
				<!--  中间数据 -->
				<table width="100%"
					class="am-table am-table-striped am-table-bordered am-table-compact am-text-nowrap"
					id="example-r">
					<thead>
						<tr>
							<th>id</th>
							<th>name</th>
							<th>phone</th>
							<th>address</th>
							<th>pwd</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>id</th>
							<th>name</th>
							<th>phone</th>
							<th>address</th>
							<th>pwd</th>
						</tr>
					</tfoot>
				</table>
			</div>

		</div>
	</div>
	<script src="<%=path%>/assets/js/jquery.min.js"></script>
	<script src="<%=path%>/assets/js/jquery.dataTables.js"></script>
	<script src="<%=path%>/assets/js/moment.js"></script>
	<script src="<%=path%>/assets/js/amazeui.min.js"></script>
	<script src="<%=path%>/assets/js/fullcalendar.min.js"></script>
	<script src="<%=path%>/js/homePage.js"></script>
	<script src="<%=path%>/js/dataTable.responsive.min.js"></script>
	<script>

		$(document).ready(function() {
			$.ajax({
				url : "Account_accountList.do",
				data : {},
				dataType : "json",
				type : "POST",
				success : function(data) {
					var userList = data.userdata;
					var ss = 
					[{"id":1,"name":"ww","phone":"phone","address":"123","pwd":"222"},
					{"id":2,"name":"ss","phone":"phone","address":"123","pwd":"222"},
					{"id":2,"name":"ss","phone":"phone","address":"123","pwd":"222"},
					{"id":2,"name":"ss","phone":"phone","address":"123","pwd":"222"}];
					table_a(userList);
					console.log(ss+"--"+JSON.stringify(userList));
				}
			}) 
		});
		function table_a(data){
			//"processing": true,
				//"ajax" : "Account_accountList.do",
			$("#example-r").dataTable({
				"data": data,
				"columns" : [
				{"data" : "id"},
				{"data" : "name"},
				{"data" : "phone"}, 
				{"data" : "address"},
				{"data" : "email"}]
			});
		}
	</script>
	<!-- $("#table_tbody").html("");
							$
									.ajax({
										url : "Account_accountList.do",
										data : {},
										datatype : "html",
										type : "POST",
										success : function(data) {
											var html = "<tr><td>张三</td><td>root</td><td>1</td><td>1</td><td>1</td></tr>";
											$("#table_tbody").append(html);
											console.log("123");
										}
									}) -->
</body>
</html>
