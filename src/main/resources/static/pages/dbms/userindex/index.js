$(function() {
	$('#addnew_userindex').click(function() {
		$("#dbm_useridex_add_uuid").val(getUuid());
		$("#dbm_useridex_add_desc").val("");
		$("#dbm_useridex_add_userOrder").val("");
		$("#dbm_useridex_add_userIndex").val("");
		$("#dbm_useridex_add_userPlaceholder").val("");
		$("#dbm_useridex_add_multeity").val("");
		$("#dbm_useridex_add_chart").val("");
		$('#dbm_userindex_add_modal').modal({
			show:true,
		});
	});
	$('#editold_userindex').click(function() {
		var data = $('#dbm_userindex_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			$("#dbm_useridex_add_uuid").val(data[0].uuid);
			$("#dbm_useridex_add_deleteFlag").val(data[0].deleteFlag);
			$("#dbm_useridex_add_uuid").val(data[0].uuid);
			$("#dbm_useridex_add_desc").val(data[0].userDesc);
			$("#dbm_useridex_add_userOrder").val(data[0].userOrder);
			$("#dbm_useridex_add_userIndex").val(data[0].userIndex);
			$("#dbm_useridex_add_userPlaceholder").val(data[0].userPlaceholder);
			$("#dbm_useridex_add_multeity").val(data[0].multeity);
			$("#dbm_useridex_add_chart").val(data[0].chart);
			$("#dbm_userindex_add_modal").modal({
				show:true,
			})
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_userindex').click(function() {
		var data = $('#dbm_userindex_datagrid').bootstrapTable('getAllSelections');
		
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysDbmsUserIndexInfo/delete";
						var param={list:data};
						ajaxPost(url, param, addSysDicUserIndexCodeSuccess, 5000, findError);
					}
				}
			});
		}
	});
	
	$('#dbm_userindex_add_button').click(function() {
		
		var url = "/sysDbmsUserIndexInfo/save";
		var	SysDicUserIndexCode={
				uuid:$("#dbm_useridex_add_uuid").val(),
			userDesc:$("#dbm_useridex_add_desc").val(),
			userOrder:$("#dbm_useridex_add_userOrder").val(),
			userIndex:$("#dbm_useridex_add_userIndex").val(),
			userPlaceholder:$("#dbm_useridex_add_userPlaceholder").val(),
			deleteFlag:$("#dbm_useridex_add_deleteFlag").val(),
			multeity:$("#dbm_useridex_add_multeity").val(),
			chart:$("#dbm_useridex_add_chart").val(),
			createUser:username,
			updateUser:username,
		}
		console.log(SysDicUserIndexCode);
		ajaxPost(url, SysDicUserIndexCode, addSysDicUserIndexCodeSuccess, 5000, findError);
		$('#dbm_userindex_add_modal').modal("hide");
	});
	
	

	// bootstrap table
	$('#dbm_userindex_datagrid').bootstrapTable({
		url : "/sysDbmsUserIndexInfo/page",
		dataType : "json",
		toolbar : '#dbm_userindex_toolbar', // 工具按钮用哪个容器
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
//		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
//		showExport: true,                    
//        exportDataType: 'all',
//        exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],  //导出文件类型
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
		sidePagination: "server", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 searchText: params.searchText
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
//			{title : 'uuid',field : 'uuid',align : 'left',sortable : true,valign : 'middle',switchable:false,visible:false},
			{title : '索引类型',field : 'userIndex',align : 'left',valign : 'middle'},
			{title : '显示信息',field : 'userDesc',align : 'left',valign : 'middle'},
			{title : '排序',field : 'userOrder',align : 'left',valign : 'middle'},
			{title : '说明',field : 'userPlaceholder',align : 'left',valign : 'middle'},
			{title : '更新时间',field : 'updateTime',align : 'left',valign : 'middle',formatter:dateTimeFormatter},
			{title : '更新人',field : 'updateUser',align : 'left',valign : 'middle'},
			{title : '多条件查询',field : 'multeity',align : 'left',valign : 'middle'},
			{title : '图表显示',field : 'chart',align : 'left',valign : 'middle'},
			{title : '标记',field : 'deleteFlag',align : 'left',valign : 'middle'}
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});

});
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_type_datagrid').bootstrapTable('resetView');
});


function addSysDicUserIndexCodeSuccess(result){
	$('#dbm_userindex_datagrid').bootstrapTable('refresh');
}