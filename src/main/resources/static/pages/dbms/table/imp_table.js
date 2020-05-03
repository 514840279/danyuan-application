var imp_table_typeName = "0";
$(function() {
	// 新建表

	
	// bootstrap table
	$('#imp_table_datagrid').bootstrapTable({
		url : "/sysDbmsTabsInfo/pagev",
		dataType : "json",
		toolbar : '#imp_table_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
		pagination : true, // 分页
		pageNumber : 1, // 初始化加载第一页，默认第一页
		pageSize : 10, // 每页的记录行数（*）
		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
		strictSearch : true,
		showColumns : true, // 是否显示所有的列
		showRefresh : true, // 是否显示刷新按钮
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页
		queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,

             }; 
             return param;
		},
		columns : [
			{title : '全选',	checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',	field : 'uuid',	align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '数据库',field : 'jdbcUuid',sortable : true,align : 'left',valign : 'middle',visible:false},
//			{title : '类型',field : 'typeUuid',sortable : true,align : 'left'},
			{title : '表名',field : 'tabsName',align : 'left',sortable : true,valign : 'middle'},
			{title : '表含义',field : 'tabsDesc',align : 'left',sortable : true,valign : 'middle'},
			{title : '表数据量',field : 'tabsRows',sortable : true,align : 'left'},
			{title : '数据库类型',field : 'dbType',align : 'left',sortable : true,valign : 'middle'},
		]
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#imp_table_datagrid').bootstrapTable('resetView');
	});
	
	
	$("#add_table_plus").click(function(){
		
		bootbox.setLocale("zh_CN");
		bootbox.confirm({
		message : "确定要添加选定行",
		title : "系统提示",
		callback : function(result) {
				if (result) {
					var data =$('#imp_table_datagrid').bootstrapTable('getAllSelections');
					var url = "/sysDbmsTabsInfo/savev";
					var param={list:data};
					ajaxPost(url, param, addSysDbmsTabsInfoSuccess);
				}
			}
		});
		
	})
	
	$("#search_sheam_btn_id").bind("click",function(){
		$('#imp_table_datagrid').bootstrapTable('refresh');
	})
	
	
});
function addSysDbmsTabsInfoSuccess(result){
	$('#imp_table_datagrid').bootstrapTable('refresh');
	
}
