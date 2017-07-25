$(function() {
	
	
	$('#addnew_roler').click(function() {
		$("#addModal_roler").modal({
			show:true,
		});
	});
	$('#editold_roler').click(function() {
		var data = $('#crawler_seed_roler_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 1){
			alert("只能选择一条");
		}else{
			loadUpdate(data[0]);
		}
	});
	
	$('#deleteold_roler').click(function() {
		
		var data = $('#crawler_seed_index_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var param = data;
						// 重载
						var url = "/sysSeed/deleteSysSeedInfo";
						ajaxPost(url, param, successdelete, 1000, findError);
					}
				}
			});
		}
	});
	
	// add roler
	$('#add_roler_button_apply').click(function() {
		if($("#add_roler_subUri").val()==null){
			alert("配对地址必须填入");
			return;
		}
		add_roler_submit();
	});
	
	$('#result_manager').click(function() {
		alert("也准备做点什么！");
	});

	// bootstrap table
	$('#crawler_seed_roler_datagrid').bootstrapTable({
		url : "/sysRoler/findAll",
		dataType : "json",
		toolbar : '#toolbar2', // 工具按钮用哪个容器
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
		height : 200, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
		showExport: true,                     //是否显示导出
		exportDataType: "basic",              //basic', 'all', 'selected'.
		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',	field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
			{title : '规则类别',field : 'type',align : 'center',sortable : true,valign : 'middle'	},
			{title : '名称',field : 'name',align : 'center',sortable : true,valign : 'middle'},
			{title : '配对网址段',field : 'subUri',	align : 'center',sortable : true,valign : 'middle'},
			{title : '请求操作',field : 'requestType',	sortable : true,align : 'center'},
			{title : '字符集',	field : 'charset',sortable : true,align : 'center'},
			{title : '描述',	field : 'discription',sortable : true,align : 'center'}
		]
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#crawler_seed_index_datagrid').bootstrapTable('resetView');
	});

});
function imgshow(value,row,index){
	return "<img src='"+value+"'>";
} 

// ========================================================================
// 添加数据
function add_roler_submit() {
	var param = {
		uuid : getUuid(),
		seedUuid : $("#role_seed_uuid").text(),
//		type : $("#add_seedType").val(),
		name : $("#add_roler_name").val(),
		subUri : $("#add_roler_subUri").val(),
		requestType : $("#add_roler_requestType").val(),
		charset : $("#add_roler_charset").val(),
		discription : $("#add_roler_discription").val(),
		insertUser : "system",
		deleteFlag : 0,
	}
	var url = "/sysRoler/addSysRoler";
	// 重载
	ajaxPost(url, param, sucessAddRoler, 1000, findError);
}

function sucessAddRoler(){
	
}


