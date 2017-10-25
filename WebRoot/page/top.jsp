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

<title>My JSP 'top.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="./assets/css/amazeui.css">
<link rel="stylesheet" type="text/css" href="./assets/css/app.css">
<link rel="stylesheet" type="text/css" href="./assets/css/admin.css"> 
<script type="text/javascript" src="./assets/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="./assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="./assets/js/app.js"></script>
<style>
	.am-topbar-inverse{
		  background-color: #;
	}
</style>
</head>

<body>
<header class="am-topbar am-topbar-inverse admin-header">
  <div class="am-topbar-brand">
    <strong>Amaze UI</strong> <small>后台管理模板</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: &#39;#topbar-collapse&#39;}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li class="am-dropdown" data-am-dropdown="">
        <a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;">
          <span class="am-icon-users"></span> ${user.name } <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="http://amazeui.org/examples/admin-index.html#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="http://amazeui.org/examples/admin-index.html#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="http://amazeui.org/examples/admin-index.html#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>


<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
      <ul class="am-list admin-sidebar-list">
        <li><a href="index.jsp"><span class="am-icon-home"></span> 首页</a></li>
        <li class="admin-parent">
          <a class="am-cf" data-am-collapse="{target: &#39;#collapse-nav&#39;}"><span class="am-icon-file"></span> 页面模块 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
          <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
            <li><a href="" class="am-cf"><span class="am-icon-check"></span> 个人资料<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
            <li><a href=""><span class="am-icon-puzzle-piece"></span> 帮助页</a></li>
            <li><a href=""><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
            <li><a href=""><span class="am-icon-calendar"></span> 系统日志</a></li>
            <li><a href=""><span class="am-icon-bug"></span> 404</a></li>
          </ul>
        </li>
        <li><a href=""><span class="am-icon-table"></span> 表格</a></li>
        <li><a href=""><span class="am-icon-pencil-square-o"></span> 表单</a></li>
        <li><a href=""><span class="am-icon-sign-out"></span> 注销</a></li>
      </ul>
    </div>
  </div>
	
	</div>
</body>
</html>
