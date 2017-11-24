/**
 * 
 */

// 点击侧边菜单，展开和关闭
$('.sidebar-nav-sub-title').on('click', function() {
    $(this).siblings('.sidebar-nav-sub').slideToggle(80)
        .end()
        .find('.sidebar-nav-sub-ico').toggleClass('sidebar-nav-sub-ico-rotate');
});

/*点击新增用户、编辑用户*/
$(function() {
	$('#add_user').on('click', function() {
		$('#my-prompt-add-user').modal({
			relatedTarget : this,
			onConfirm : function(e) { //确定
				alert('你输入的是：' + e.data || '');
			},
			onCancel : function(e) {//取消

			}
		});
	});
});