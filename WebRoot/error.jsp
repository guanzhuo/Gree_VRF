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

<title>My JSP 'error.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
* {
	margin: 0;
	padding: 0;
}
body{
	text-align:center;
}
#divs {
border:1px solid red;
	margin:0 auto;
	width:50%;
	height: 50%;
	background: url(image/banner.jpg) repeat;
}
#divs label{
	font-size:80px;
	color:white;
}
</style>
</head>

<body>
	<div id="divs">
		<label>404</label><br/>
		<label>网页已经走丢</label>
	</div>
</body>
</html>
