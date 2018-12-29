$(function() {
	init();
});

// 初始化 
function init(){
	// select 初始化
	var url = "/crawler/sysCrawlerTaskInfo/findUrlType";
	ajaxPost(url,{},loadUrlType);
	
	// select 初始化
	var url = "/crawler/sysCrawlerTaskInfo/findTaskName";
	ajaxPost(url,{},loadTaskName);
	
	// 初始化规则组
	loadRuleGroup();
	
	loadRule();
	
}

// 下拉框 网站类型 加载
function loadUrlType(result){
	var data = [{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	})
	$("#search_task_urlType").select2({
	    tags: true,
	    placeholder: "请选择",
	    data: data
	});
	search_task_urlType = null;
	$('#search_task_urlType').on('select2:select', function (evt) {
		search_task_urlType = evt.params.data.id;
		if(search_task_urlType == "请选择"){
			search_task_urlType = null;
		}
	});
}

var search_task_taskName=null;
// 任务名称 加载
function loadTaskName(result){
	var data = [{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	})
	$("#search_task_taskName").select2({
	    tags: true,
	    placeholder: "请选择",
	    data: data
	});
	search_task_taskName = null;
	$('#search_task_taskName').on('select2:select', function (evt) {
		search_task_taskName = evt.params.data.id;
		if(search_task_taskName == "请选择"){
			search_task_taskName = null;
		}
	});
}

// 初始化规则组
function loadRuleGroup(){

	// bootstrap table
	$('#crawler_rule_group_config_table_datagrid').bootstrapTable({
		url : "/crawler/sysCrawlerRulerInfo/page",
		dataType : "json",
		toolbar : '#crawler_rule_group_table_toolbar', // 工具按钮用哪个容器
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
		uniqueId : "id", // 每一行的唯一标识，一般为主键列
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
		 filter: true,
		queryParams: function queryParams(params) {  
			console.log(params);
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 info:{ },
                 sortOrder:params.sortOrder,
                 sortName:params.sortName,
                 filter:params.filter
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'top',visible:false},
			{title : '规则名称',field : 'name',align : 'center',sortable : true,valign : 'top'},
			{title : '规则类型',field : 'type',sortable : true,align : 'center',valign : 'top', sortable: true},
			{title : '修改时间',field : 'updateTime',sortable : true,align : 'center',valign : 'top',formatter:dateTimeFormatter},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
}

function loadRule(){
	
	// bootstrap table
	$('#crawler_rule_config_table_datagrid').bootstrapTable({
		url : "/crawler/sysCrawlerRulerColumInfo/page",
		dataType : "json",
		toolbar : '#crawler_rule_config_table_toolbar', // 工具按钮用哪个容器
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
		uniqueId : "id", // 每一行的唯一标识，一般为主键列
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
		 filter: true,
		queryParams: function queryParams(params) {  
			console.log(params);
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 info:{ },
                 sortOrder:params.sortOrder,
                 sortName:params.sortName,
                 filter:params.filter
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
//			{title : 'id',field : 'id',align : 'center',sortable : true,valign : 'top',visible:false},
			{title : '规则名称',field : 'name',align : 'center',sortable : true,valign : 'top'},
			{title : '规则类型',field : 'type',sortable : true,align : 'center',valign : 'top', sortable: true},
			{title : '规则内容',field : 'context',sortable : true,align : 'center',valign : 'top'},
			{title : '规则状态',field : 'status',sortable : true,align : 'center',valign : 'top'},
			{title : '修改时间',field : 'updateTime',sortable : true,align : 'center',valign : 'top',formatter:dateTimeFormatter},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
}

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_rule_table_datagrid').bootstrapTable('resetView');
});



function addRuleSuccess(result){
	$('#dbm_rule_table_datagrid').bootstrapTable('refresh');
}