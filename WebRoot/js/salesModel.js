/**
 * 
 */

// 点击侧边菜单，展开和关闭
$('.sidebar-nav-sub-title').on(
		'click',
		function() {
			$(this).siblings('.sidebar-nav-sub').slideToggle(80).end().find(
					'.sidebar-nav-sub-ico').toggleClass(
					'sidebar-nav-sub-ico-rotate');
		});


$(function() {

	/* 点击导入 */
	$('#import').on('click', function() {
		$('#my-prompt-import').modal({
			relatedTarget : this,
			onConfirm : function(e) { // 确定
				alert('你输入的是：' + e.data || '');
			},
			onCancel : function(e) {// 取消

			}
		});
	});

	/* 点击新增机型 */
	$('#add_model').on('click', function() {
		$('#my-prompt-add-model').modal({
			relatedTarget : this,
			onConfirm : function(e) { // 确定
				alert('你输入的是：' + e.data || '');
			},
			onCancel : function(e) {// 取消

			}
		});
	});

	/* 文件上传 */
	$('#doc-form-file').on('change', function() {
		var fileNames = '';
		$.each(this.files, function() {
			fileNames += '<span class="my-file-upload">' + this.name + '</span> ';
		});
		$('#file-list').html(fileNames);
	});

});

/*
 * 点击新增机型 $(function() { $('#add_model').on('click', function() {
 * $('#my-prompt-add-model').modal({ relatedTarget : this, onConfirm :
 * function(e) { //确定 alert('你输入的是：' + e.data || ''); }, onCancel : function(e)
 * {//取消
 *  } }); }); });
 * 
 * 文件上传 $(function() { $('#doc-form-file').on('change', function() { var
 * fileNames = ''; $.each(this.files, function() { fileNames += '<span
 * class="am-badge">' + this.name + '</span> '; });
 * $('#file-list').html(fileNames); }); });
 */

