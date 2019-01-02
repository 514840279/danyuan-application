$(function() {
	$('#addnew_config_table').click(function() {
		var data = $('#dbm_view_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要添加选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysChartRelationshipType/savev";
						var param={list:data,username:username};
						ajaxPost(url, param, addSysTableInfoSuccess, 5000, findError);
					}
				}
			});
		}
	});
	$('#editold_config_table').click(function() {
		var data = $('#dbm_config_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			$("#update_config_table_tableName").text(data[0].relationshipName);
			$("#update_config_table_tableDesc").val(data[0].relationshipDesc);
			$("#update_config_table_deleteFlag").val(data[0].deleteFlag);
			$('#update-show-myModal').modal({
		        show: true
		    })
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_config_table').click(function() {
		var data = $('#dbm_config_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysChartRelationshipType/delete";
						var param={list:data};
						ajaxPost(url, param, addSysTableInfoSuccess, 5000, findError);
					}
				}
			});
		}
	});
	
	
	$("#update_config_table_button").click(function(){
		var data = $('#dbm_config_table_datagrid').bootstrapTable('getAllSelections');
		var param=data[0];
		param.relationshipDesc=$("#update_config_table_tableDesc").val();
		param.deleteFlag=$("#update_config_table_deleteFlag").val();
		var url = "/sysChartRelationshipType/save";
		ajaxPost(url, param, addSysTableInfoSuccess, 5000, findError);
	});
	
	// config table
	configTable();
	// config table
	configView();
});

update_config_table_typeUuid=" ";
function addSelectedTypeSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.typeName});
	});
	
	$('#update_config_table_typeUuid').select2({
	    tags: true,
	    data:data
	});
	$('#search_config_table_typeUuid').select2({
	    tags: true,
	    data:data
	});
	
	//种子下拉点击事件
	$('#update_config_table_typeUuid').on('select2:select', function (evt) {
		update_config_table_typeUuid = evt.params.data.id;
	});
	
	$('#search_config_table_typeUuid').on('select2:select', function (evt) {
		search_config_table_typeUuid = evt.params.data.id;
		$('#dbm_config_table_datagrid').bootstrapTable("refresh");
	});
}

function configView(){

	// bootstrap table
	$('#dbm_view_table_datagrid').bootstrapTable({
		url : "/chartConfig/relationship",
		dataType : "json",
		toolbar : '#dbm_config_view_toolbar', // 工具按钮用哪个容器
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
			{title : '关系名',field : 'relationshipName',sortable : true,align : 'left'},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result,total:result.length};
		}, 
	});
}
function configTable(){

	// bootstrap table
	$('#dbm_config_table_datagrid').bootstrapTable({
		url : "/sysChartRelationshipType/page",
		dataType : "json",
		toolbar : '#dbm_config_table_toolbar', // 工具按钮用哪个容器
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
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '关系名',field : 'relationshipName',sortable : true,align : 'left'},
			{title : '关系含义',field : 'relationshipDesc',sortable : true,align : 'right'},
			{title : '更新时间',field : 'updateTime',align : 'center',sortable : true,valign : 'middle',formatter:dateTimeFormatter},
			{title : '更新人',field : 'updateUser',sortable : true,align : 'center',valign : 'left'},
			{title : '标记',field : 'deleteFlag',sortable : true,align : 'right'}
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
}
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_config_table_datagrid').bootstrapTable('resetView');
});





function addSysTableInfoSuccess(result){
	$('#dbm_view_table_datagrid').bootstrapTable('refresh');
	$('#dbm_config_table_datagrid').bootstrapTable('refresh');
	$('#update-show-myModal').modal('hide');
}