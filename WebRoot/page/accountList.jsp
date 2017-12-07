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
<link rel="stylesheet" type="text/css" href="<%=path%>/assets/css/jquery.dataTables.css">
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
					class="display "
					id="user_list" >
					<thead>
						<tr>
							<th><input id="checkbox_id_all" name="checkbox_name_all" type="checkbox" value=""></th>
							<th>id</th>
							<th>name</th>
							<th>phone</th>
							<th>address</th>
							<th>pwd</th>
							<th>删除</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>

		</div>
	</div>
	<script src="<%=path%>/assets/js/jquery.min.js"></script>
	<script src="<%=path%>/assets/js/moment.js"></script>
	<script src="<%=path%>/assets/js/amazeui.min.js"></script>
	<script src="<%=path%>/assets/js/fullcalendar.min.js"></script>
	<script src="<%=path%>/js/homePage.js"></script>
	<script src="<%=path%>/js/dataTable.responsive.min.js"></script>
	<script src="<%=path%>/assets/js/jquery.dataTables.js"></script>
	<script>
	/* function aaa(id){
		var table = $('#user_list').DataTable();
		$('#user_list tbody').on( 'click', 'tr', function () {
		  console.log( table.row( this ).data() );
		} );
				/* console.log("1111");
                var data = $('#user_list').DataTable().row($(this).parents('tr')).data();
                var count =$('#user_list').DataTable().row.count; */
                /* alert("查看修改："+JSON.stringify(count)); }*/
		function test_oo(){
			var table = $('#user_list').DataTable();
		  		console.log(table.rows);
		}
		function myEditor(){
			alert("");
		}
		$(document).ready(function() {
			$.ajax({
				url : "Account_accountList.do",
				data : {},
				dataType : "json",
				type : "POST",
				success : function(data) {
					var userList = data.userdata;
					for(var i=0;i<userList.length;i++){
						userList[i]["temp"]="<input type='checkbox' value=''>";
/* 						userList[i]["mo"]="<button onclick='test_oo()'>修改</button>"
 */					}
					console.log(userList);
				/* 	var ss = 
					[{"id":1,"name":"ww","phone":"phone","address":"123","pwd":"222"},
					{"id":2,"name":"ss","phone":"phone","address":"123","pwd":"222"},
					{"id":2,"name":"ss","phone":"phone","address":"123","pwd":"222"},
					{"id":2,"name":"ss","phone":"phone","address":"123","pwd":"222"}]; */
					table_a(userList);
				}
			}) 
		});
		function table_a(data){
			//"processing": true,
				//"ajax" : "Account_accountList.do",
			$("#user_list").DataTable({
				"data": data,
				"columns" : [
				{"data" : "temp"},
				{"data" : "id"},
				{"data" : "name"},
				{"data" : "phone"}, 
				{"data" : "address"},
				{"data" : "email"},
/* 				{"data" : "mo"},
 */				],
				"columnDefs" :[{
					"targer":1,
					"data":null,
					"render":function(data,type,row){
						var html = "<a href='javascript:void(0);' class='up btn btn-default btn-xs'><i class='fa fa-arrow-up'></i> 编辑</a>"
						return html;
					}
				}],
				"aoColumnDefs":[//设置列的属性，此处设置第一列不排序
                    {"bSortable": false, "aTargets": [0]},{ "class": "tn", "targets": [ 0 ] },
                    {
                        "targets": -1,
                        "class": "but_xq",
                        "data": null,
                        "bSortable": false,
                        "defaultContent": "<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id=\"edit\" href=\"#\">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a id=\"del\"  href=\"#\">删除</a></p>"
                    } 
                ],
			});
			
			 
			$('#user_list').DataTable( {
			    buttons: [
			        { extend: 'remove', editor: myEditor }
			    ]
			} );
			 //单击行，选中复选框
            $("#user_list tr").slice(1).each(function(g){
                var p = this;
                $(this).children().slice(1).click(function(){
                    $($(p).children()[0]).children().each(function(){
                        if(this.type=="checkbox"){
                            if(!this.checked){
                                this.checked = true;
                            }else{
                                this.checked = false;
                            }
                        }
                    });
                });
            });
            /**
             * 全选/全不选
             */
            $('#checkbox_id_all').click( function () {
                $(":checkbox:not(#checkbox_id_all)").attr("checked", this.checked);
            });
			/* var table = $('#user_list').DataTable();
			$('#user_list tbody').on( 'click', 'tr', function () {
		  		console.log( table.row( this ).data().id );
			} );
			
			$('a#edit').on( 'click', 'a#edit', function () {
                var data = $('#user_list').DataTable().row((this).data());
                alert(data);
                alert("查看修改："+data.id );
            } ); */
		}
	</script>
</body>
</html>
