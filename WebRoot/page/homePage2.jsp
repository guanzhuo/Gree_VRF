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
<link rel="stylesheet" type="text/css" href="./assets/css/amazeui.min.css">
<link rel="stylesheet" type="text/css" href="./assets/css/admin.css">
<link rel="stylesheet" type="text/css" href="./assets/css/app.css">
<link rel="stylesheet" type="text/css" href="./assets/css/fullcalendar.min.css">
<link rel="stylesheet" type="text/css" href="./assets/css/fullcalendar.print.css" media='print'>

</head>

<body>


	<div class="am-g tpl-g">
		<!-- 头部 -->
		<header class="admin-header topbar"> <!-- logo -->
		<div class="am-fl tpl-header-logo">
			<a href="javascript:;"><img src="./image/logo.png" alt=""></a>
		</div>
		<!-- 右侧内容 -->
		<div class="tpl-header-fluid">
			<!-- 侧边切换 -->
			<!-- <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span>

                </span>
            </div> -->
			<!-- 搜索 -->
			<!--<div class="am-fl tpl-header-search">
                <form class="tpl-header-search-form" action="javascript:;">
                    <button class="tpl-header-search-btn am-icon-search"></button>
                    <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
                </form>
            </div>-->
			<!-- 其它功能-->
			<div class="am-fr tpl-header-navbar">
				<ul>
					<!-- 欢迎语 -->
					<li class="am-text-sm tpl-header-navbar-welcome"><a
						href="javascript:;" class="font_colors_constant_14">欢迎你, <span
							class="font_colors_constant_14">${user.name }</span>
					</a></li>

					<!-- 新邮件 -->
					<!--<li class="am-dropdown tpl-dropdown" data-am-dropdown>
                        <a href="javascript:;" class="am-dropdown-toggle tpl-dropdown-toggle" data-am-dropdown-toggle>
                            <i class="am-icon-envelope"></i>
                            <span class="am-badge am-badge-success am-round item-feed-badge">4</span>
                        </a>
                        &lt;!&ndash; 弹出列表 &ndash;&gt;
                        <ul class="am-dropdown-content tpl-dropdown-content">
                            <li class="tpl-dropdown-menu-messages">
                                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                    <div class="menu-messages-ico">
                                        <img src="assets/img/user04.png" alt="">
                                    </div>
                                    <div class="menu-messages-time">
                                        3小时前
                                    </div>
                                    <div class="menu-messages-content">
                                        <div class="menu-messages-content-title">
                                            <i class="am-icon-circle-o am-text-success"></i>
                                            <span>夕风色</span>
                                        </div>
                                        <div class="am-text-truncate"> Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </div>
                                        <div class="menu-messages-content-time">2016-09-21 下午 16:40</div>
                                    </div>
                                </a>
                            </li>

                            <li class="tpl-dropdown-menu-messages">
                                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                    <div class="menu-messages-ico">
                                        <img src="assets/img/user02.png" alt="">
                                    </div>
                                    <div class="menu-messages-time">
                                        5天前
                                    </div>
                                    <div class="menu-messages-content">
                                        <div class="menu-messages-content-title">
                                            <i class="am-icon-circle-o am-text-warning"></i>
                                            <span>禁言小张</span>
                                        </div>
                                        <div class="am-text-truncate"> 为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。 </div>
                                        <div class="menu-messages-content-time">2016-09-16 上午 09:23</div>
                                    </div>
                                </a>
                            </li>
                            <li class="tpl-dropdown-menu-messages">
                                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                    <i class="am-icon-circle-o"></i> 进入列表…
                                </a>
                            </li>
                        </ul>
                    </li>

                    &lt;!&ndash; 新提示 &ndash;&gt;
                    <li class="am-dropdown" data-am-dropdown>
                        <a href="javascript:;" class="am-dropdown-toggle" data-am-dropdown-toggle>
                            <i class="am-icon-bell"></i>
                            <span class="am-badge am-badge-warning am-round item-feed-badge">5</span>
                        </a>

                        &lt;!&ndash; 弹出列表 &ndash;&gt;
                        <ul class="am-dropdown-content tpl-dropdown-content">
                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <div class="tpl-dropdown-menu-notifications-title">
                                        <i class="am-icon-line-chart"></i>
                                        <span> 有6笔新的销售订单</span>
                                    </div>
                                    <div class="tpl-dropdown-menu-notifications-time">
                                        12分钟前
                                    </div>
                                </a>
                            </li>
                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <div class="tpl-dropdown-menu-notifications-title">
                                        <i class="am-icon-star"></i>
                                        <span> 有3个来自人事部的消息</span>
                                    </div>
                                    <div class="tpl-dropdown-menu-notifications-time">
                                        30分钟前
                                    </div>
                                </a>
                            </li>
                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <div class="tpl-dropdown-menu-notifications-title">
                                        <i class="am-icon-folder-o"></i>
                                        <span> 上午开会记录存档</span>
                                    </div>
                                    <div class="tpl-dropdown-menu-notifications-time">
                                        1天前
                                    </div>
                                </a>
                            </li>


                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <i class="am-icon-bell"></i> 进入列表…
                                </a>
                            </li>
                        </ul>
                    </li>-->

					<!-- 退出 -->
					<li class="am-text-sm"><a href="javascript:;"
						class="font_colors_constant_14"> <span
							class="am-icon-sign-out am-icon-sm icon_colors"></span> 退出
					</a></li>
				</ul>
			</div>
		</div>

		</header>

		<div class="tpl-page-container">

			<!-- 侧边导航栏 -->
			<div class="left-sidebar tpl-left-nav tpl-page-header-fixed">
				<!-- 用户信息 -->
				<div class="tpl-sidebar-user-panel">
					<div class="tpl-user-panel-slide-toggleable">
						<div class="tpl-user-panel-profile-picture">
							<img src="./image/user06.png" alt="">
						</div>
						<span class="user-panel-logged-in-text"> <i
							class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
							${user.name }
						</span>


						<li class="am-dropdown" data-am-dropdown=''><a
							href="javascript:;"
							class="am-dropdown-toggle tpl-user-panel-action-link font_colors_constant_14"
							data-am-dropdown-toggle=''> <span
								class="am-icon-pencil icon_colors"></span> 账号设置
						</a>

							<ul class="am-dropdown-content">
								<!-- <li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li> -->
								<li><a href="#" style="color: #666666;font-size:14px;"><span
										class="am-icon-cog am-icon-sm icon_colors"></span> 修改密码</a></li>
							</ul></li>

					</div>
				</div>

				<!-- 菜单 -->
				<ul class="sidebar-nav">
				<!-- APP板块 -->
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title">
                        <i class="am-icon-mobile am-icon-md sidebar-nav-link-logo"></i> APP管理
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub">
                        <li class="sidebar-nav-link">
                            <a href= '#' onclick="onClickToOpenPage();return false;">
                                <span class="am-icon-hand-o-right sidebar-nav-link-logo"></span> APP用户注册
                            </a>
                        </li>

                        <li class="sidebar-nav-link">
                            <a href="table-list-img.html">
                                <span class="am-icon-hand-o-right sidebar-nav-link-logo"></span> APP登录历史
                            </a>
                        </li>
                        <li class="sidebar-nav-link">
                            <a href="table-list-img.html">
                                <span class="am-icon-hand-o-right sidebar-nav-link-logo"></span> 方案管理
                            </a>
                        </li>
                    </ul>
                </li>
                
                 <li class="am-nav-divider"></li>
                
                <!-- 区域管理 -->
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title">
                        <i class="am-icon-globe am-icon-sm sidebar-nav-link-logo"></i> 区域管理
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub">
                        <li class="sidebar-nav-link">
                            <a href="table-list.html">
                                <span class="am-icon-hand-o-right sidebar-nav-link-logo"></span> 区域维护
                            </a>
                        </li>

                        <li class="sidebar-nav-link">
                            <a href="table-list-img.html">
                                <span class="am-icon-hand-o-right sidebar-nav-link-logo"></span> 机型搭配
                            </a>
                        </li>
                       
                    </ul>
                </li>
                <li class="am-nav-divider"></li>
                <!--客户化管理  -->
               <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title">
                        <i class="am-icon-wpforms am-icon-sm sidebar-nav-link-logo"></i> 客户化管理
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub">
                        <li class="sidebar-nav-link">
                            <a href="table-list.html">
                                <span class="am-icon-hand-o-right sidebar-nav-link-logo"></span> 客户化
                            </a>
                        </li>
                    </ul>
                </li>
               <li class="am-nav-divider"></li>
 				<!--系统管理  -->
               <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title">
                        <i class="am-icon-cog am-icon-sm sidebar-nav-link-logo"></i>系统管理
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico tpl-left-nav-more-ico"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub">
                        <li class="sidebar-nav-link">
                            <a href="table-list.html">
                                <span class="am-icon-hand-o-right sidebar-nav-link-logo"></span> 账号管理
                            </a>
                        </li>
                        <li class="sidebar-nav-link">
                            <a href="table-list.html">
                                <span class="am-icon-hand-o-right sidebar-nav-link-logo"></span> 角色管理
                            </a>
                        </li>
                        <li class="sidebar-nav-link">
                            <a href="table-list.html">
                                <span class="am-icon-hand-o-right sidebar-nav-link-logo"></span> 日志管理
                            </a>
                        </li>
                    </ul>
                </li>
                
                 <li class="am-nav-divider"></li>
				</ul>
			</div>
			
					
			<!--  右侧内容-->
			<div class="tpl-content-wrapper" id="tpl-content-wrapper">
				<div class="tpl-content-page-title">Amaze UI 表单</div>
				<ol class="am-breadcrumb">
					<li><a href="#" class="font_click_colors_16"><span
							class="icon_colors am-icon-home am-icon-md "></span>首页</a></li>
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


	<!-- 弹出层  日程编辑-->
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



	<script src="./assets/js/jquery.min.js"></script>
	 <script src="./assets/js/moment.js"></script>
	<script src="./assets/js/amazeui.min.js"></script>
	<script src="./assets/js/fullcalendar.min.js"></script>
	<script src="./js/homePage.js"></script>
</body>
</html>
