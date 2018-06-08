search_dbm_view_column_typeUuid=null;
$(function() {
	$('#addnew_view_column_table').click(function() {
		var data = $('#dbm_view_column_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要添加选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysDbmsTabsColsInfo/savev";
						var param={list:data,username:username};
						ajaxPost(url, param, addSysColumnInfoSuccess, 5000, findError);
					}
				}
			});
		}
	});
	showClomnTable();
	
	var url = "/sysDbmsTabsJdbcInfo/findAll";
	ajaxPost(url, null, addSelectedAddrSuccess, 5000, findError);
	
	var url = "/sysDbmsTabsInfo/findAll";
	ajaxPost(url, null, addSelectedTabsSuccess, 5000, findError);
});

function addSysColumnInfoSuccess(){
	$('#dbm_view_column_datagrid').bootstrapTable('refresh');
	$('#dbm_config_column_datagrid').bootstrapTable('refresh');
}
function addSelectedTabsSuccess(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.tabsDesc+"("+value.tabsName+")"});
	});
	$('#dbm_view_column_tableName').select2({
	    tags: true,
	    data:data,
	    placeholder: "请选择",
	});
	$('#dbm_view_column_tableName').on('select2:select', function (evt) {
		dbm_view_column_tableName = evt.params.data.id;
		$('#dbm_view_column_datagrid').bootstrapTable('refresh');
	});	
}
dbm_view_column_tableName=null;
function addSelectedAddrSuccess(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.databaseName});
	});
	$('#dbm_view_column_addrUuid').select2({
	    tags: true,
	    data:data,
	    placeholder: "请选择",
	});
	$('#dbm_view_column_addrUuid').on('select2:select', function (evt) {
		dbm_view_column_addrUuid = evt.params.data.id;
		var param={
				jdbcUuid:dbm_view_column_addrUuid
		}
		var url = "/sysDbmsTabsInfo/findAllBySysTableInfo";
		ajaxPost(url, param, addSelectedTabsSuccess, 5000, findError);
	});
}

dbm_view_column_addrUuid = null;
function showClomnTable(){
	// bootstrap table
	$('#dbm_view_column_datagrid').bootstrapTable({
		url : "/sysDbmsTabsColsInfo/pagev",
		dataType : "json",
		toolbar : '#dbm_view_column_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
		pagination : true, // 分页
		pageNumber : 1, // 初始化加载第一页，默认第一页
		pageSize : 10, // 每页的记录行数（*）
		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
		strictSearch : true,
//		showColumns : true, // 是否显示所有的列
		showRefresh : true, // 是否显示刷新按钮
		minimumCountColumns : 2, // 最少允许的列数
//		clickToSelect : true, // 是否启用点击选中行
//		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
//		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
//		cardView : false, // 是否显示详细视图
//		detailView : false, // 是否显示父子表
//		showExport: true,                    
//        exportDataType: 'all',
//        exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],  //导出文件类型
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 info:{tabsUuid: dbm_view_column_tableName}
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',field : 'uuid',align : 'left',sortable : true,valign : 'middle',visible:false},
			{title : 'tabsUuid',field : 'tabsUuid',align : 'left',sortable : true,valign : 'middle',visible:false},
			{title : '表名称',field : 'tabsName',align : 'left',sortable : true,valign : 'middle'},
			{title : '列名称',field : 'colsName',align : 'left',sortable : true,valign : 'middle'},
			{title : '列中文含义',field : 'colsDesc',align : 'left',sortable : true,valign : 'middle'},
			{title : '列顺序',field : 'colsOrder',sortable : true,align : 'ritht'},
			{title : '列数据类型',field : 'colsType',sortable : true,align : 'left'},
//			{title : '列长度',field : 'colsLength',align : 'ritht',sortable : true,valign : 'middle'},
//			{title : '查询显示标识',field : 'pageInput',align : 'center',sortable : true,valign : 'middle'},
//			{title : '列表显示标识',field : 'pageList',sortable : true,align : 'center'},
//			{title : '详细显示标识',field : 'pageView',sortable : true,align : 'center'},
//			{title : '标记',field : 'deleteFlag',sortable : true,align : 'center'}
		],
//		responseHandler: function(result){  // 成功时执行
//			return {rows:result.content,total:result.totalElements};
//		}, 
	});
}
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_config_table_datagrid').bootstrapTable('resetView');
});





function addSysTableTypeInfoSuccess(result){
	$('#dbm_config_table_datagrid').bootstrapTable('refresh');
}