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
						var url = "/sysZhcxTab/savev";
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
			$("#update_config_table_tableName").text(data[0].tableName);
			$("#update_config_table_tableDesc").val(data[0].tableDesc);
			$("#update_config_table_tableOrder").val(data[0].tableOrder);
			$("#update_config_table_dbType").val(data[0].dbType);
			$("#update_config_table_esName").val(data[0].esName);
			$("#update_config_table_deleteFlag").val(data[0].deleteFlag);
			$('#update_config_table_typeUuid').val(data[0].typeUuid).trigger("change")
			$('#update_config_table_addrUuid').val(data[0].addrUuid).trigger("change")
			
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
						var url = "/sysZhcxTab/delete";
						var param={list:data};
						ajaxPost(url, param, addSysTableInfoSuccess, 5000, findError);
					}
				}
			});
		}
	});
	
	$('#gear_config_table').click(function() {
		var data = $('#dbm_config_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length ==1){
			if(data[0].dbType!='oracle'){
				alert("当前只支持Oracle数据库类型");
			}else{
				modals.openWin({
			    	winId:"table_gear",
			    	title:'图标选择器（双击选择）',
			    	width:'1000px',
			    	url:""
			    });
			}
			
		}else{
			alert("只能选中一条数据");
		}
	});
	
	$("#update_config_table_button").click(function(){
		var data = $('#dbm_config_table_datagrid').bootstrapTable('getAllSelections');
		data[0].tableDesc=$("#update_config_table_tableDesc").val();
		data[0].tableOrder=		$("#update_config_table_tableOrder").val();
		data[0].dbType=$("#update_config_table_dbType").val();
		data[0].esName=		$("#update_config_table_esName").val();
		data[0].deleteFlag=$("#update_config_table_deleteFlag").val();
		data[0].typeUuid=update_config_table_typeUuid==" "?data[0].typeUuid:update_config_table_typeUuid;
		data[0].addrUuid=update_config_table_addrUuid==" "?data[0].addrUuid:update_config_table_addrUuid;
		var url = "/sysZhcxTab/save";
		var param=data[0];
		ajaxPost(url, param, addSysTableInfoSuccess, 5000, findError);
	});
	
	// config table
	configTable();
	// config table
	configView();
	// selected type
	selectedType();
	selectedAddr();


});
function selectedAddr(){
	var url = "/sysZhcxAddr/list";
	ajaxPost(url, null, addSelectedAddrSuccess, 5000, findError);
}
function selectedType(){
//	update_config_table_typeUuid
	var url = "/sysZhcxType/list";
	ajaxPost(url, null, addSelectedTypeSuccess, 5000, findError);
	
}
update_config_table_typeUuid=" ";
search_config_table_typeUuid="";
function addSelectedTypeSuccess(result){
	var data = [{id:"",text:"请选择"}];
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

update_config_table_addrUuid=" ";
search_config_table_addrUuid="";
function addSelectedAddrSuccess(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.dbName});
	});
	
	$('#update_config_table_addrUuid').select2({
	    tags: true,
	    data:data
	});
	$('#search_config_table_addrUuid').select2({
	    tags: true,
	    data:data
	});
	
	//种子下拉点击事件
	$('#update_config_table_addrUuid').on('select2:select', function (evt) {
		update_config_table_addrUuid = evt.params.data.id;
	});
	
	$('#search_config_table_addrUuid').on('select2:select', function (evt) {
		search_config_table_addrUuid = evt.params.data.id;
		console.log(search_config_table_addrUuid);
		$('#dbm_config_table_datagrid').bootstrapTable("refresh");
	});
}

function configView(){

	// bootstrap table
	$('#dbm_view_table_datagrid').bootstrapTable({
		url : "/sysZhcxTab/pagev",
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
		search : true, // 显示搜索框
		sidePagination: "server", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/x-www-form-urlencoded",
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
//			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle',switchable:false,visible:false},
//			{title : '表类型',field : '',sortable : true,align : 'center'},
			{title : '表名',field : 'tableName',sortable : true,align : 'left'},
			{title : '表含义',field : 'tableDesc',align : 'left',sortable : true,valign : 'left'},
			{title : '表排序',field : 'tableOrder',sortable : true,align : 'rigth'},
			{title : '数据量',field : 'tableRows',sortable : true,align : 'rigth'},
			{title : '表空间大小',field : 'tableSpace',align : 'rigth',sortable : true,valign : 'middle'},
			{title : '数据库类型',field : 'dbType',sortable : true,align : 'left'},
			{title : 'es中名称',field : 'esName',align : 'center',sortable : true,valign : 'left'},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
}
function configTable(){

	// bootstrap table
	$('#dbm_config_table_datagrid').bootstrapTable({
		url : "/sysZhcxTab/page",
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
                 info:{
                	 typeUuid: search_config_table_typeUuid,
                	 addrUuid:search_config_table_addrUuid
                 }
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
//			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle',switchable:false,visible:false},
//			{title : '表类型',field : 'typeUuid',sortable : true,align : 'center'},
			{title : '表名',field : 'tableName',sortable : true,align : 'left'},
			{title : '表排序',field : 'tableOrder',sortable : true,align : 'right'},
			{title : '数据量',field : 'tableRows',sortable : true,align : 'right'},
			{title : '表空间大小',field : 'tableSpace',align : 'right',sortable : true,valign : 'middle'},
			{title : '表含义',field : 'tableDesc',align : 'left',sortable : true,valign : 'middle'},
			{title : '数据库类型',field : 'dbType',sortable : true,align : 'left'},
			{title : 'es中名称',field : 'esName',align : 'left',sortable : true,valign : 'middle'},
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
	$('#dbm_config_table_datagrid').bootstrapTable('refresh');
	$('#update-show-myModal').modal('hide');
}