$(function(){
	init();
})

// 初始化方法
function init(){
	
	
	
	// 退出详细信息 跳转列表页 点击事件
	$("#dbms_tabs_vSysDbmsTableDis_exit_button").bind("click",function(){
		loadPage("/pages/dbms/tabs/vsysdbmstabledis.html")
	})

}
