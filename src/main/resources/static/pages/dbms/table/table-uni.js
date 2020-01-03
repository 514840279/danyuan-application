var _tableUuid1=null;
var _tableUuid2=null;

$(function() {

	var url = "/sysDbmsTabsTypeInfo/findAll";
	ajaxPost(url, null, addSelectedTypeSuccess, 5000, findError);
	
	var url = "/sysDbmsTabsJdbcInfo/findAll";
	ajaxPost(url, null, addSelectedAddrSuccess, 5000, findError);
	
	showClomnTable();
	showClomnTable2();
	showClomnTable3();
});

search_config_table_typeUuid=null;
search_config_table_typeUuid2=null;
function addSelectedTypeSuccess(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.typeName});
	});
	
	$('#search_config_table_typeUuid').select2({
		tags: true,
		data:data,
		placeholder: "请选择",
	}).on('select2:select', function (evt) {
		search_config_table_typeUuid = evt.params.data.id;
		searchtableNames();
	});
	
	$('#search_config_table_typeUuid2').select2({
		tags: true,
		data:data,
		placeholder: "请选择",
	}).on('select2:select', function (evt) {
		search_config_table_typeUuid2 = evt.params.data.id;
		searchtableNames2();
	});
}

function searchtableNames(){
	var param ={
		typeUuid:search_config_table_typeUuid,
		jdbcUuid:search_config_table_addrUuid,
	}
	var url = "/sysDbmsTabsInfo/findAllBySysTableInfo";
	ajaxPost(url, param, addSelectedTableSuccess, 5000, findError);
}

function searchtableNames2(){
	var param ={
		typeUuid:search_config_table_typeUuid2,
		jdbcUuid:search_config_table_addrUuid2,
	}
	var url = "/sysDbmsTabsInfo/findAllBySysTableInfo";
	ajaxPost(url, param, addSelectedTableSuccess2, 5000, findError);
}

search_config_table_addrUuid="";
search_config_table_addrUuid2="";
function addSelectedAddrSuccess(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.databaseName});
	});
	
	$('#search_config_table_addrUuid').select2({
		tags: true,
		data:data,
		placeholder: "请选择",
	}).on('select2:select', function (evt) {
		search_config_table_addrUuid = evt.params.data.id;
		searchtableNames();
	});
	
	$('#search_config_table_addrUuid2').select2({
		tags: true,
		data:data,
		placeholder: "请选择",
	}).on('select2:select', function (evt) {
		search_config_table_addrUuid2 = evt.params.data.id;
		searchtableNames2();
	});
}


function addSelectedTableSuccess(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.tabsName + ((value.tabsDesc==""||value.tabsDesc==null)?"":"("+value.tabsDesc+")")});
	});
	$('#search_config_table_tableUuid').empty();   
	$('#search_config_table_tableUuid').select2({
		tags: true,
		data:data,
		placeholder: "请选择",
	}).on('select2:select', function (evt) {
		_tableUuid1 = evt.params.data.id;
		$("#tablename1").text(evt.params.data.text);
		$('#dbm_config_column_datagrid1').bootstrapTable("refresh");
	});
}

function addSelectedTableSuccess2(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.tabsName + ((value.tabsDesc==""||value.tabsDesc==null)?"":"("+value.tabsDesc+")")});
	});
	$('#search_config_table_tableUuid2').empty();   
	$('#search_config_table_tableUuid2').select2({
		tags: true,
		data:data,
		placeholder: "请选择",
	}).on('select2:select', function (evt) {
		_tableUuid2 = evt.params.data.id;
		$("#tablename2").text(evt.params.data.text);
		$('#dbm_config_column_datagrid2').bootstrapTable("refresh");
	});
}



function showClomnTable(){
	// bootstrap table
	$('#dbm_config_column_datagrid1').bootstrapTable({
		url : "/sysDbmsTabsColsInfo/page",
		dataType : "json",
//		toolbar : '#dbm_config_column_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
		sortName : "colsOrder", // 排序名
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
		singleSelect : true,
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
					sortOrder:params.sortOrder,
					sortName:params.sortName,
					info:{tabsUuid: _tableUuid1}
			}; 
			return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '列名称',field : 'colsName',align : 'left',sortable : true,valign : 'middle'},
			{title : '列中文含义',field : 'colsDesc',align : 'left',sortable : true,valign : 'middle'},
			{title : '列顺序',field : 'colsOrder',sortable : true,align : 'right'},
			{title : '用户配置索引列',field : 'userIndex',sortable : true,align : 'left',valign : 'middle',visible:false},
			{title : '列表显示标识',field : 'colsVisible',sortable : true,align : 'left',visible:false},
			{title : '字段选择标识',field : 'colsSwitchable',sortable : true,align : 'left',visible:false},
			{title : '支持排序条件',field : 'colsSort',sortable : true,align : 'left',visible:false},
			{title : '支持图表纬度',field : 'dimeFlag',sortable : true,align : 'left',visible:false,formatter:function(deleteFlag){
				return  deleteFlag==0?"不支持":"支持";
			}},
			{title : '显示宽度',field : 'colsWidth',sortable : true,align : 'left',visible:false},
			{title : '对齐（横）',field : 'colsAlign',sortable : true,align : 'left',visible:false},
			{title : '对齐（纵）',field : 'colsValign',sortable : true,align : 'left',visible:false},
			{title : '显示图标',field : 'userIcon',align : 'left',sortable : true,visible:false,valign : 'middle',formatter:function(userIcon){
				return "<i class='"+userIcon+"'></i>";
			}},
			{title : '启用标记',field : 'deleteFlag',sortable : true,align : 'left',visible:false,formatter:function(deleteFlag){
				return  deleteFlag==1?"删除":"启用";
			}},
			{title : '更新时间',field : 'updateTime',align : 'left',sortable : true,visible:false,valign : 'middle'},
			{title : '更新人',field : 'updateUser',sortable : true,align : 'left',valign : 'middle',visible:false},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) {
    }).on('click-row.bs.table', function (e, row, ele,field) {
    	$(".info").removeClass("info");
    	$(ele).addClass("info");
    });
}



function showClomnTable2(){
	// bootstrap table
	$('#dbm_config_column_datagrid2').bootstrapTable({
		url : "/sysDbmsTabsColsInfo/page",
		dataType : "json",
//		toolbar : '#dbm_config_column_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
		sortName : "colsOrder", // 排序名
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
		singleSelect : true,
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
					sortOrder:params.sortOrder,
					sortName:params.sortName,
					info:{tabsUuid: _tableUuid2}
			}; 
			return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '列名称',field : 'colsName',align : 'left',sortable : true,valign : 'middle'},
			{title : '列中文含义',field : 'colsDesc',align : 'left',sortable : true,valign : 'middle'},
			{title : '列顺序',field : 'colsOrder',sortable : true,align : 'right'},
			{title : '用户配置索引列',field : 'userIndex',sortable : true,align : 'left',valign : 'middle',visible:false},
			{title : '列表显示标识',field : 'colsVisible',sortable : true,align : 'left',visible:false},
			{title : '字段选择标识',field : 'colsSwitchable',sortable : true,align : 'left',visible:false},
			{title : '支持排序条件',field : 'colsSort',sortable : true,align : 'left',visible:false},
			{title : '支持图表纬度',field : 'dimeFlag',sortable : true,align : 'left',visible:false,formatter:function(deleteFlag){
				return  deleteFlag==0?"不支持":"支持";
			}},
			{title : '显示宽度',field : 'colsWidth',sortable : true,align : 'left',visible:false},
			{title : '对齐（横）',field : 'colsAlign',sortable : true,align : 'left',visible:false},
			{title : '对齐（纵）',field : 'colsValign',sortable : true,align : 'left',visible:false},
			{title : '显示图标',field : 'userIcon',align : 'left',sortable : true,visible:false,valign : 'middle',formatter:function(userIcon){
				return "<i class='"+userIcon+"'></i>";
			}},
			{title : '启用标记',field : 'deleteFlag',sortable : true,align : 'left',visible:false,formatter:function(deleteFlag){
				return  deleteFlag==1?"删除":"启用";
			}},
			{title : '更新时间',field : 'updateTime',align : 'left',sortable : true,visible:false,valign : 'middle'},
			{title : '更新人',field : 'updateUser',sortable : true,align : 'left',valign : 'middle',visible:false},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) {
    }).on('click-row.bs.table', function (e, row, ele,field) {
    	$(".info").removeClass("info");
    	$(ele).addClass("info");
    });
}



function showClomnTable3(){
	// bootstrap table
	$('#dbm_config_column_datagrid3').bootstrapTable({
		url : "/sysDbmsTabsMergeInfo/page",
		dataType : "json",
		toolbar : '#dbm_config_column_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
		sortName : "colsOrder", // 排序名
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
		singleSelect : true,
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
					sortOrder:params.sortOrder,
					sortName:params.sortName,
					info:{tableUuid1: _tableUuid2,tableUuid2: _tableUuid1}
			}; 
			return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '主键',field : 'uuid',align : 'left',sortable : true,valign : 'middle',visible:false},
			{title : '表1',field : 'tableUuid1',align : 'left',sortable : true,valign : 'middle',visible:false},
			{title : '列名称1',field : 'colsName1',align : 'left',sortable : true,valign : 'middle'},
			{title : '列中文1',field : 'colsDesc1',align : 'left',sortable : true,valign : 'middle'},
			{title : '表2',field : 'tableUuid2',align : 'left',sortable : true,valign : 'middle',visible:false},
			{title : '列名称2',field : 'colsName2',sortable : true,align : 'left',valign : 'middle'},
			{title : '列中文2',field : 'colsDesc2',sortable : true,align : 'left',valign : 'middle'},
			{title : '更新时间',field : 'updateTime',align : 'left',sortable : true,visible:false,valign : 'middle'},
			{title : '更新人',field : 'updateUser',sortable : true,align : 'left',valign : 'middle',visible:false},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) {
    }).on('click-row.bs.table', function (e, row, ele,field) {
    	$(".info").removeClass("info");
    	$(ele).addClass("info");
    });
}