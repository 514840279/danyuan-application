$(function() {
	$('#addnew_type').click(function() {
		$("#dbm_type_add_uuid").val(getUuid());
		$('#dbm_type_add_modal').modal({
			show:true,
		});
	});
	$('#editold_type').click(function() {
		var data = $('#dbm_addr_datagrid').bootstrapTable('getAllSelections');
		console.log(data);
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			$("#dbm_type_add_uuid").val(data[0].uuid);
			$("#dbm_type_add_dbType").val(data[0].dbType);
			$("#dbm_type_add_dbName").val(data[0].dbName);
			$("#dbm_type_add_ip").val(data[0].ip);
			$("#dbm_type_add_port").val(data[0].port);
			$("#dbm_type_add_username").val(data[0].username);
			$("#dbm_type_add_password").val(data[0].password);
			$("#dbm_type_add_modal").modal({
				show:true,
			})
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_type').click(function() {
		var data = $('#dbm_addr_datagrid').bootstrapTable('getAllSelections');
		
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysZhcxAddr/delete";
						var param={list:data};
						ajaxPost(url, param, addSysTableTypeInfoSuccess, 5000, findError);
					}
				}
			});
		}
	});
	
	$('#dbm_type_add_button').click(function() {
		
		var url = "/sysZhcxAddr/save";
		var	sysZhcxAddr={
			uuid:$("#dbm_type_add_uuid").val(),
			dbType:$("#dbm_type_add_dbType").val(),
			dbName:$("#dbm_type_add_dbName").val(),
			ip:$("#dbm_type_add_ip").val(),
			port:$("#dbm_type_add_port").val(),
			username:$('#dbm_type_add_username').val(),
			password:$('#dbm_type_add_password').val(),
			createUser:username,
			updateUser:username,
		}
		ajaxPost(url, sysZhcxAddr, addSysTableTypeInfoSuccess, 5000, findError);
		$('#dbm_type_add_modal').modal("hide");
	});
	
	

	// bootstrap table
	$('#dbm_addr_datagrid').bootstrapTable({
		url : "/sysZhcxAddr/page",
		dataType : "json",
		toolbar : '#dbm_type_toolbar', // 工具按钮用哪个容器
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
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 info:{
                	 
                 }
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
//			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle',switchable:false,visible:false},
			{title : '数据库类型',field : 'dbType',sortable : true,align : 'left',valign : 'middle'},
			{title : 'ip',field : 'ip',sortable : true,align : 'left',valign : 'middle'},
			{title : '端口',field : 'port',align : 'left',sortable : true,valign : 'middle'},
			{title : '用户名',field : 'username',align : 'left',sortable : true,valign : 'middle'},
//			{title : '密码',field : 'password',align : 'left',sortable : true,valign : 'middle'},
			{title : '数据库名',field : 'dbName',sortable : true,align : 'left',valign : 'middle'},
//			{title : '标记',field : 'deleteFlag',sortable : true,align : 'left',valign : 'middle'}
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});

});
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_addr_datagrid').bootstrapTable('resetView');
});


function addSysTableTypeInfoSuccess(result){
	$('#dbm_addr_datagrid').bootstrapTable('refresh');
}