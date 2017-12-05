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

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="./assets/css/jquery.dataTable.css">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<table width="100%" class="display" id="user_list">
		<thead>
			<tr>
				<th>id</th>
				<th>name</th>
				<th>phone</th>
				<th>address</th>
				<th>pwd</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="table_b">
		</tbody>
	</table>
</body>
	<script src="./assets/js/jquery.dataTables.js"></script>
	<script src="./assets/js/jquery.min.js"></script>

<script>
	$(document).ready(function() {
		$.ajax({
			url : "Account_accountList.do",
			data : {},
			dataType : "json",
			type : "POST",
			success : function(data) {
				var userList = data.userdata;
				var ss = [ {
					"id" : 1,
					"name" : "ww",
					"phone" : "phone",
					"address" : "123",
					"pwd" : "222"
				},
					{
						"id" : 2,
						"name" : "ss",
						"phone" : "phone",
						"address" : "123",
						"pwd" : "222"
					},
					{
						"id" : 2,
						"name" : "ss",
						"phone" : "phone",
						"address" : "123",
						"pwd" : "222"
					},
					{
						"id" : 2,
						"name" : "ss",
						"phone" : "phone",
						"address" : "123",
						"pwd" : "222"
					} ];
				table_a(userList);
			}
		})
	});
	function table_a(data) {
		//"processing": true,
		//"ajax" : "Account_accountList.do",
		$("#user_list").dataTable({
			"data" : data,
			"columns" : [
				{
					"data" : "id"
				},
				{
					"data" : "name"
				},
				{
					"data" : "phone"
				},
				{
					"data" : "address"
				},
				{
					"data" : "email"
				} ]
		});
	}
</script>
</html>
