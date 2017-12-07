<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!-- 侧边栏 -->
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
</head>
<script src="<%=path%>/assets/js/jquery.min.js"></script>
<script>
	function onClick_u(){
	/* 		$(this).siblings('.sidebar-nav-sub').slideToggle(100).end().find(
					'.sidebar-nav-sub-ico').addClass(
					'sidebar-nav-sub-ico-rotate');
					console.log($('.sidebar-nav-sub-ico')); */
	}
	function click_T(id){
		$("#span_"+id).toggleClass('sidebar-nav-sub-ico-rotate');
		$("#ul_"+id).toggleClass('sidebar-nav-sub');
	}
	$(document).ready(function() {
		function objLength(obj) {
			var count = 0;
			for (var i in obj) {
				count++
			}
			return count;
		}
		$.ajax({
			url : "Login_getPer.do",
			dataType : "json",
			type : "POST",
			data : {},
			success : function(data) {
				var perList = data[0];
				var htmlAll = "";
				var parent = "";
				var html = "";
				console.log(perList);
				for (var i = 1; i <= objLength(perList); i++) {
					var ppp = perList[i];
					
					if (perList[i].length > 0) {
						var parentName = "";
						var child = "";
						for (var j = 0; j < ppp.length; j++) {
							var per = ppp[j];
							child += "<li class='sidebar-nav-link'>" +
								"<a href='"+per.url+"'>" +
								"<span class='am-icon-hand-o-right sidebar-nav-link-logo'></span>" +
								"" + per.permissionName + "</a></li>"
							parentName = per.parentId;
						}
						parent += "<li onclick='click_T("+i+")' class='sidebar-nav-link'>" +
							"<a href='javascript:onClick_u();' class='sidebar-nav-sub-title'>" +
							"<i id='i_"+i+"' class='am-icon-globe am-icon-sm sidebar-nav-link-logo'></i>" + parentName + "" +
							"<span id='span_"+i+"' class='am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico'>" +
							"</a><ul id='ul_"+i+"' class='sidebar-nav sidebar-nav-sub'>" +
							child +
							"</ul></li><li class='am-nav-divider'></li>";
					}
				}
				html = parent;

				/* parent+="<li class='sidebar-nav-link'>"+
					"<a class='sidebar-nav-sub-title'>"+
					"<i class='am-icon-globe am-icon-sm sidebar-nav-link-logo'></i>区域管理"+
					"<span class='am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico'>"
					"</a><ul class='sidebar-nav sidebar-nav-sub'>"+
					child+
					"</ul>"; */

				/* var html="<li class='sidebar-nav-link'>"+
				"<a class='sidebar-nav-sub-title'>"+
				"<i class='am-icon-globe am-icon-sm sidebar-nav-link-logo'></i>区域管理"+
				"<span class='am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico'>"
				"</a>"+
				"<ul class='sidebar-nav sidebar-nav-sub'>"+
				"<li class='sidebar-nav-link'>"+
				"<a href=''>"+
				"<span class='am-icon-hand-o-right sidebar-nav-link-logo'></span>"+
				"---</a></li>"+
				"</li>"; */
				$("#permission_list").append(html);
				$("#i_1").addClass('am-icon-mobile am-icon-md sidebar-nav-link-logo');
				$("#i_2").addClass('am-icon-globe am-icon-sm sidebar-nav-link-logo');
				$("#i_3").addClass('am-icon-wpforms am-icon-sm sidebar-nav-link-logo');
				$("#i_4").addClass('am-icon-cog am-icon-sm sidebar-nav-link-logo');
			}
		});
	});
</script>
<body>
	<!-- 侧边导航栏 -->
	<div style="width:275px" class="left-sidebar tpl-left-nav tpl-page-header-fixed">
		<!-- 用户信息 -->
		<div class="tpl-sidebar-user-panel">
			<div class="tpl-user-panel-slide-toggleable">
				<div class="tpl-user-panel-profile-picture">
					<img src="./image/user06.png" alt="">
				</div>
				<span class="user-panel-logged-in-text">
					<i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
					${user.name }
				</span>
				<li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
					<a href="javascript:;"
						class="am-dropdown-toggle tpl-user-panel-action-link font_colors_constant_14">
						<span class="am-icon-pencil icon_colors"></span>
						账号设置
					</a>

					<ul class="am-dropdown-content">
						<!-- <li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li> -->
						<li>
							<a href="#" style="color: #666666;font-size:14px;">
								<span class="am-icon-cog am-icon-sm icon_colors"></span>
								修改密码
							</a>
						</li>
					</ul>
				</li>
			</div>
		</div>
		<!-- 菜单 -->
		<ul id="permission_list" class="sidebar-nav">
			<!-- APP板块 -->
				<%-- <li class="sidebar-nav-link">
					<a href="javascript:onClick_u();" class="sidebar-nav-sub-title">
						<i class="am-icon-mobile am-icon-md sidebar-nav-link-logo"></i>
						APP管理
						<span
							class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico"></span>
					</a>
					<ul class="sidebar-nav sidebar-nav-sub">
						<li class="sidebar-nav-link">
							<a href='page/appRegister.jsp'>
								<span class="am-icon-hand-o-right sidebar-nav-link-logo"></span>
								App注册
							</a>
						</li>
					</ul>
				</li>
			<li class="am-nav-divider"></li>
			<!-- 区域管理 -->
			<li class="sidebar-nav-link">
				<a href="javascript:onClick_u();" class="sidebar-nav-sub-title">
					<i class="am-icon-globe am-icon-sm sidebar-nav-link-logo"></i>
					区域管理
					<span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico"></span>
				</a>
				<ul class="sidebar-nav sidebar-nav-sub">
					<li class="sidebar-nav-link">
						<a href="page/territory.jsp">
							<span class="am-icon-hand-o-right sidebar-nav-link-logo"></span>
							区域维护
						</a>
					</li>

					<li class="sidebar-nav-link">
						<a href="page/salesModel.jsp">
							<span class="am-icon-hand-o-right sidebar-nav-link-logo"></span>
							机型搭配
						</a>
					</li>

				</ul>
			</li>
			<li class="am-nav-divider"></li>
			<!--客户化管理  -->
			<li class="sidebar-nav-link">
				<a href="javascript:;" class="sidebar-nav-sub-title">
					<i class="am-icon-wpforms am-icon-sm sidebar-nav-link-logo"></i>
					客户化管理
					<span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico"></span>
				</a>
				<ul class="sidebar-nav sidebar-nav-sub">
					<li class="sidebar-nav-link">
						<a href="page/customization.jsp">
							<span class="am-icon-hand-o-right sidebar-nav-link-logo"></span>
							客户化
						</a>
					</li>
				</ul>
			</li>
			<li class="am-nav-divider"></li>
			<!--系统管理  -->
			<li class="sidebar-nav-link">
				<a href="javascript:;" class="sidebar-nav-sub-title">
					<i class="am-icon-cog am-icon-sm sidebar-nav-link-logo"></i>
					系统管理
					<span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico"></span>
				</a>
				<ul class="sidebar-nav sidebar-nav-sub">
					<li class="sidebar-nav-link">
						<a href="page/accountList.jsp">
							<span class="am-icon-hand-o-right sidebar-nav-link-logo"></span>
							账号管理
						</a>
					</li>
					<li class="sidebar-nav-link">
						<a href="table-list.html">
							<span class="am-icon-hand-o-right sidebar-nav-link-logo"></span>
							角色管理
						</a>
					</li>
					<li class="sidebar-nav-link">
						<a href="table-list.html">
							<span class="am-icon-hand-o-right sidebar-nav-link-logo"></span>
							日志管理
						</a>
					</li>
				</ul>
			</li>
			<li class="am-nav-divider"></li> --%>
			
		</ul>
		<s:iterator value="#request.permissions">
				<s:property value="id" />
			</s:iterator>
			<s:debug></s:debug>
	</div>
	
</body>
</html>






