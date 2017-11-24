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
	href="<%=path%>/css/projectProposal.css">

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
					<li class="am-active font_colors_constant_16">方案管理</li>
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

										<!-- <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
											<div class="am-form-group">
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button type="button"
															class="am-btn am-btn-default am-btn-success"
															id="add_user">
															<span class="am-icon-plus"></span> 新增
														</button>
														<button type="button"
															class="am-btn am-btn-default am-btn-secondary">
															<span class="am-icon-download"></span> 导入
														</button>
														<button type="button"
															class="am-btn am-btn-default am-btn-warning">
															<span class="am-icon-external-link"></span> 导出
														</button>
														<button type="button"
															class="am-btn am-btn-default am-btn-danger">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</div>
										</div> -->

										<div class="am-u-sm-12">
											<ul class="tpl-task-list tpl-task-remind">
												<li>
													<div class="cosB">
														<span class="tpl-label-time"> 2017-10-8 11:36:44</span>
													</div>

													<div class="cosA">
														<span class="cosIcon"><i class="am-icon-file-excel-o"></i></span> 
														<span class="tpl-label-title"> 格力测试工程111 <!-- <span
															class="tpl-label-info"> 提取文件 <i
																class="am-icon-share"></i>
														</span> -->
														</span>
														
														<span class="tpl-label-author"> leepin </span>
													</div>
												</li>
												
												<li>
													<div class="cosB">
														<span> 2017-10-8 11:36:44</span>
													</div>

													<div class="cosA">
														<span class="cosIcon"><i class="am-icon-file-excel-o"></i></span> 
														<span class="tpl-label-title"> 格力测试工程222222 <!-- <span
															class="tpl-label-info"> 提取文件 <i
																class="am-icon-share"></i>
														</span> -->
														</span>
														
														<span class="tpl-label-author"> leepin </span>
													</div>
												</li>
												
												<li>
													<div class="cosB">
														<span> 2017-10-8 11:36:44</span>
													</div>

													<div class="cosA">
														<span class="cosIcon"><i class="am-icon-file-excel-o"></i></span> 
														<span class="tpl-label-title"> 格力测试工程 555555<!-- <span
															class="tpl-label-info"> 提取文件 <i
																class="am-icon-share"></i>
														</span> -->
														</span>
														
														<span class="tpl-label-author"> leepin </span>
													</div>
												</li>

											</ul>
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

	<!-- 页面弹框，点击新增 用户-->
	<div class="am-modal am-modal-prompt" tabindex="-1"
		id="my-prompt-add-user">
		<div class="am-modal-dialog">
			<div class="am-modal-hd add-user-prompt-title">
				<span class="am-icon-pencil font_editTitle_color_16"><span
					class="font_editTitle_color_16" style="padding-left:6px;">编辑</span></span>
			</div>


			<div class="am-modal-bd add-user-prompt-info">
				姓名： <input type="text" class="am-modal-prompt-input">
			</div>
			<div class="am-modal-bd add-user-prompt-info">
				邮箱： <input type="text" class="am-modal-prompt-input">
			</div>
			<div class="am-modal-bd add-user-prompt-info">
				密码： <input type="text" class="am-modal-prompt-input">
			</div>
			<div class="am-modal-bd add-user-prompt-info">
				电话： <input type="text" class="am-modal-prompt-input">
			</div>
			<div class="am-modal-bd add-user-prompt-info">
				地区： <input type="text" class="am-modal-prompt-input">
			</div>
			<div class="am-modal-bd add-user-prompt-info">
				折扣下限： <input type="text" class="am-modal-prompt-input">
			</div>
			<div class="am-modal-bd add-user-prompt-info">
				折扣上限： <input type="text" class="am-modal-prompt-input">
			</div>

			<div class="am-modal-bd add-user-prompt-info">
				客户代码： <select>
					<option value="a">Apple</option>
					<option value="b" selected>Banana</option>
					<option value="o">Orange</option>
					<option value="m">Mango</option>
					<option value="d" disabled>禁用鸟</option>
				</select>
			</div>

			<div class="am-modal-footer" style="margin-top: 3rem;">
				<span class="am-modal-btn" data-am-modal-cancel>取消</span> <span
					class="am-modal-btn" data-am-modal-confirm>提交</span>
			</div>
		</div>
	</div>
	

	<script src="<%=path%>/assets/js/jquery.min.js"></script>
	<script src="<%=path%>/assets/js/amazeui.min.js"></script>
	<script src="<%=path%>/js/projectProposal.js"></script>
</body>
</html>
