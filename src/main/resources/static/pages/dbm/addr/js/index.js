$(function() {
	$('#addnew_addr').click(function() {
		loadPage('/pages/dbm/addr/add_addr.html','add_addr_id','添加连接')
	});
	$('#editold_addr').click(function() {
		var data = $('#db_addr_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 1){
			alert("只能选择一条");
		}else{
			loadPage('/sysDatabaseInfo/addBefor','add_addr_id','修改连接',data[0],'reload')
			
		}
	});
	
	$('#deleteold_addr').click(function() {
		var data = $('#db_addr_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var param = {
								"list":data,
						};
						// 重载
						var url = "/sysDatabaseInfo/deleteSysDatabaseInfo";
						ajaxPost(url, param, successDeleteSysDatabaseInfo, 1000, findError);
					}
				}
			});
		}
	});

	// bootstrap table
	$('#db_addr_datagrid').bootstrapTable({
		url : "/sysDatabaseInfo/findAll",
		dataType : "json",
		toolbar : '#db_addr_toolbar', // 工具按钮用哪个容器
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
		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页
		columns : [
			{title : '全选',	checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',	field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
			{title : 'ip',field : 'address',sortable : true,align : 'center'},
			{title : '端口',field : 'port',align : 'center',sortable : true,valign : 'middle'},
			{title : '数据库类型',field : 'type',align : 'center',sortable : true,valign : 'middle'},
			{title : '用户名',field : 'username',align : 'center',sortable : true,valign : 'middle'},
			{title : '密码',field : 'password',sortable : true,align : 'center'},
			{title : '数据库名',field : 'databaseName',sortable : true,align : 'center'}
		]
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#db_addr_datagrid').bootstrapTable('resetView');
	});

});
function successDeleteSysDatabaseInfo(){
	$('#db_addr_datagrid').bootstrapTable('refresh');
}