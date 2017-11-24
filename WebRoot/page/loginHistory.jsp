<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>APP 管理</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="pragma" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="expires" content="0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/constant.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/assets/css/amazeui.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/assets/css/admin.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/assets/css/app.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/appRegister.css">

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
				<!-- <div class="tpl-content-page-title">Amaze UI 表单</div> -->
				<ol class="am-breadcrumb">
					<li><a href="#" class="font_click_colors_16"><span
							class="icon_colors am-icon-home am-icon-sm "></span>APP管理</a></li>
					<li class="am-active font_colors_constant_16">APP登录历史</li>
					<!--< li class="am-active font_colors_constant_16">Amaze UI 表单</li> -->
				</ol>


				<!-- 内容区域 -->
				<div class="tpl-portlet-components">
					<div class="portlet-title">
						<!-- <div class="caption font-green bold">
					<span class="am-icon-code"></span> 列表
				</div> -->
						<div class="tpl-portlet-input tpl-fz-ml">
							<div class="portlet-input input-small input-inline">
								<div class="input-icon right">
									<i class="am-icon-search"></i> <input type="text"
										class="form-control form-control-solid" placeholder="搜索...">
								</div>
							</div>
						</div>
					</div>

					<div class="am-cf">
						<div class="row">
							<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
								<div class="widget am-cf">
									<!--  <div class="widget-head am-cf">
                            <div class="widget-title  am-cf">文章列表</div>
                        </div> -->
									<div class="widget-body  am-fr" style="padding:0;">

										<div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
											<div class="am-form-group">
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														
														<button type="button"
															class="am-btn am-btn-default am-btn-warning">
															<span class="am-icon-external-link"></span> 导出
														</button>					
													</div>
												</div>
											</div>
										</div>

										<div class="am-u-sm-12">
											<table width="100%"
												class="am-table am-table-compact am-table-striped tpl-table-black "
												id="example-r">
												<thead>
													<tr>											
														<th class="table-name">姓名</th>
														<th class="table-email">邮箱地址</th>
														<th class="table-phone">电话</th>
														<th class="table-date">登录日期</th>
														
													</tr>
												</thead>
												<tbody>
													<tr class="gradeX">
														<td>测试1号</td>
														<td>12346@qq.com</td>
														<td>12345678901</td>
														<td class="am-hide-sm-only">2014年9月5日 7:28:47</td>														
													</tr>
													<tr class="even gradeC">							
														<td>测试1号</td>
														<td>12346@qq.com</td>
														<td>12345678901</td>					
														<td class="am-hide-sm-only">2014年9月5日 7:28:47</td>												
													</tr>

													<!-- more data -->
												</tbody>
											</table>
										</div>

										<!-- 上一页 下一页 -->
										<div class="am-u-lg-12 am-cf">

											<div class="am-fr">
												<ul class="am-pagination tpl-pagination">
													<li class="am-disabled"><a href="#">«</a></li>
													<li class="am-active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li><a href="#">»</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script src="<%=path%>/assets/js/jquery.min.js"></script>
	<script src="<%=path%>/assets/js/amazeui.min.js"></script>
	<script src="<%=path%>/js/loginHistory.js"></script>
</body>
</html>
