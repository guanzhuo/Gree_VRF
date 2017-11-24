/**
 * 
 */

// 点击侧边菜单，展开和关闭
$('.sidebar-nav-sub-title').on('click', function() {
    $(this).siblings('.sidebar-nav-sub').slideToggle(80)
        .end()
        .find('.sidebar-nav-sub-ico').toggleClass('sidebar-nav-sub-ico-rotate');
});


$(document).ready(function(){
	/**
	 * 日历控件显示
	 */
	calendarSet();
	
	
	
});

function onClickToOpenPage(){
//	$("#tpl-content-wrapper").load('page/appManage.jsp');
	$("#home-calendar2").attr("display","none");
}


/**
 * 日历
 */
function calendarSet(){
	
	var editBox = $("#calendar-edit-box");//日程编辑
	$(".edit-box-close").on('click',function(){
		$("#calendar").fullCalendar('unselect');
		
	});
	$("#calendar").fullCalendar({
		 header: {
             left: 'prev,next today',//上一月、下一月、本月
             center: 'title',
             right: 'month,agendaDay'
         },
         height:650,//设置高度，日程表的高度则有aspectRatio决定（提示：aspectRatio的值越大，高度越小）
         aspectRatio:1.3, 
     /*    
      * 汉化
      * monthNames: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
         monthNamesShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
         dayNames: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],
         dayNamesShort: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],*/
        /* today: ["今天"],*/
         /*firstDay: 1,*///设置一周中显示的第一天是哪天，周日是0，周一是1，类推。
         buttonText: {
             today: 'Today',
             month: 'Month',
            /* week: '周',
             day: '日',*/
             prev: 'Last month',
             next: 'Next month'
         },
         defaultDate: CurentTime(),
         /*lang: 'zh-cn',*/
         navLinks: true, // can click day/week names to navigate views
         selectable: true,
         selectHelper: true,
         select: function(start, end) { //添加日程
             var title = prompt('填写你的记录的:');
             var eventData;
             if (title) {
                 eventData = {
                     title: title,
                     start: start,
                     end: end
                 };
                 $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
             }
             $('#calendar').fullCalendar('unselect');
         },
         editable: true,
         eventLimit: true, // allow "more" link when too many events
         eventClick: function(event, jsEvent, view) { //点击每日的日程，查看日程

             // event.source.events[0].title = '222223333'
             // 修改数据
             // 标题
        	 //var theDate = event.start;
        	 $('#title').html("每日安排");
             $('.calendar-edit-box-title').html(event.title);
             //  弹出框
             editBox.modal();

         },
         

	});
	
	
	
	

	/*$("#calendar").hover(function() {
		$(this).addClass("calendar_hover");
	}, function() {
		$(this).removeClass("calendar_hover");
	});*/
}

/* 获取当前日期 2009-06-12 */
function CurentTime()
{ 
    var now = new Date();
   
    var year = now.getFullYear();       //年
    var month = now.getMonth() + 1;     //月
    var day = now.getDate();            //日
  
   
    var clock = year + "-";
   
    if(month < 10)
        clock += "0";
   
    clock += month + "-";
   
    if(day < 10)
        clock += "0";
       
    clock += day + " ";
    return(clock); 
} 


