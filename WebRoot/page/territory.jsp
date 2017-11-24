<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 区域维护 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Territory</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="pragma" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="expires" content="0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" type="text/css" href="./css/constant.css">
<link rel="stylesheet" type="text/css" href="./assets/css/amazeui.css">
<link rel="stylesheet" type="text/css" href="./assets/css/admin.css">
<link rel="stylesheet" type="text/css" href="./assets/css/app.css">
<link rel="stylesheet" type="text/css" href="./css/territory.css">

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

				<ol class="am-breadcrumb">
					<li><a href="#" class="font_click_colors_16"><span
							class="icon_colors am-icon-home am-icon-sm "></span>区域管理</a></li>
					<li class="am-active font_colors_constant_16">区域维护</li>
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
															class="am-btn am-btn-default am-btn-success"
															id="add_region">
															<span class="am-icon-plus"></span> 新增
														</button>
														<!-- <button type="button"
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
														</button> -->
													</div>
												</div>
											</div>
										</div>

										<div class="am-u-sm-12 am-u-md-6 am-u-lg-3" style="float: right;">
											<div class="am-form-group tpl-table-list-select">
												<select data-am-selected="{btnSize: 'sm'}">
												    <option value="option1">所有地区</option>
													<option value="option2">America</option>
													<option value="option3">Canada</option>
												</select>
											</div>
										</div>


										<div class="am-u-sm-12">
											<table width="100%"
												class="am-table am-table-compact am-table-striped tpl-table-black "
												id="example-r">
												<thead>
													<tr>
														<th class="table-regin ">地区</th>
														<th class="table-account ">客户代码</th>
														<th class="table-author">业务经理</th>
														<!-- <th class="table-creator">创建人</th>
												<th class="table-create-time">创建日期</th>	 -->
														<th class="table-date">修改日期</th>
														<th class="table-set">操作</th>
													</tr>
												</thead>
												<tbody>
													<tr class="gradeX">
														<td class="am-hide-sm-only">美国</td>
														<td>12345678901</td>
														<td>测试1号</td>
														<td class="am-hide-sm-only">2014年9月5日 7:28:47</td>
														<td>
															<div class="tpl-table-black-operation">
																<a href="javascript:;"> <i class="am-icon-pencil"></i>
																	编辑
																</a> <a href="javascript:;"
																	class="tpl-table-black-operation-del"> <i
																	class="am-icon-trash"></i> 删除
																</a>
															</div>
														</td>
													</tr>
													<tr class="even gradeC">
														<td class="am-hide-sm-only">美国</td>
														<td>12345678901</td>
														<td>测试1号</td>
														<td class="am-hide-sm-only">2014年9月5日 7:28:47</td>
														<td>
															<div class="tpl-table-black-operation">
																<a href="javascript:;"> <i class="am-icon-pencil"></i>
																	编辑
																</a> <a href="javascript:;"
																	class="tpl-table-black-operation-del"> <i
																	class="am-icon-trash"></i> 删除
																</a>
															</div>
														</td>
													</tr>

													<!-- more data -->
												</tbody>
											</table>
										</div>

										<!-- 上一页 下一页 -->
										<div class="am-u-lg-12 am-cf">

											<div class="am-fr">
												<ul class="am-pagination tpl-pagination">
													<li class="am-disabled"><a href="#"
														style="font-size:16px;">«</a></li>
													<li class="am-active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li><a href="#" style="font-size:16px;">»</a></li>
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
	
	<!-- 页面弹框，点击新增区域-->
	<div class="am-modal am-modal-prompt" tabindex="-1"
		id="my-prompt-add-region">
		<div class="am-modal-dialog">
			<div class="am-modal-hd add-user-prompt-title">
				<span class="am-icon-pencil font_editTitle_color_16"><span
					class="font_editTitle_color_16" style="padding-left:6px;">添加区域</span></span>
			</div>

			<div class="am-modal-bd add-user-prompt-info">
				区域：
				<div  style=" padding: 5px;border:one;width: 82%;margin: 5px auto 0 auto;">
					<select
						data-am-selected = "{btnWidth: '100%',background: '#fff'}" >
						<option value="a">Apple</option>
						<option value="b" selected>Banana</option>
						<option value="o">Orange</option>
						<option value="m">Mango</option>
						<option value="d" disabled>禁用鸟</option>
					</select>
				</div>
			</div>
			
			<div class="am-modal-bd add-user-prompt-info">
				客户代码： <input type="text" class="am-modal-prompt-input">
			</div>
			<div class="am-modal-bd add-user-prompt-info">
				业务员： <input type="text" class="am-modal-prompt-input" disabled>
			</div>

			<div class="am-modal-footer" style="margin-top: 3rem;">
				<span class="am-modal-btn" data-am-modal-cancel>取消</span> <span
					class="am-modal-btn" data-am-modal-confirm>提交</span>
			</div>
		</div>
	</div>

	<script src="./assets/js/jquery.min.js"></script>
	<script src="./assets/js/amazeui.min.js"></script>
	<script src="./js/territory.js"></script>
</body>
</html>
