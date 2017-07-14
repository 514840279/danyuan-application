$(function() {
	$('#addnew').click(function() {
		$("#addModal").modal({
			show:true,
		});
	});
	$('#editold').click(function() {
		var data = $('#crawler_seed_index_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 1){
			alert("只能选择一条");
		}else{
			loadUpdate(data[0]);
		}
	});
	
	$('#deleteold').click(function() {
		
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
	
	$('#role_manager').click(function() {
		alert("准备做点什么！");
	});
	
	$('#result_manager').click(function() {
		alert("也准备做点什么！");
	});

	// bootstrap table
	$('#crawler_seed_index_datagrid').bootstrapTable({
		url : "/sysSeed/sysSeedList",
		dataType : "json",
		toolbar : '#toolbar', // 工具按钮用哪个容器
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
		showExport: true,                     //是否显示导出
		exportDataType: "basic",              //basic', 'all', 'selected'.
		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',	field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
			{title : '网站类型',field : 'seedType',sortable : true,align : 'center'},
			{title : '网站名称',field : 'seedName',align : 'center',sortable : true,valign : 'middle'	},
			{title : '网站商标',field : 'seedIcon',align : 'center',sortable : true,valign : 'middle'},
			{title : '链接地址',field : 'seedUrl',	align : 'center',sortable : true,valign : 'middle'},
			{title : '字符集',	field : 'charset',	sortable : true,align : 'center'},
			{title : '请求时间',field : 'requestDate',	sortable : true,align : 'center'},
			{title : '资源功能描述',	field : 'discription',sortable : true,align : 'center'}
		]
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#crawler_seed_index_datagrid').bootstrapTable('resetView');
	});

});
// ========================================================================
// 添加数据
function submit() {
	var param = {
		uuid : getUuid(),
		seedType : $("#add_seedType").val(),
		seedName : $("#add_seedName").val(),
		seedIcon : $("#add_seedIcon").val(),
		seedUrl : $("#add_seedUrl").val(),
		charset : $("#add_charset").val(),
		requestType : $("#add_requestType").val(),
		requestDate : $("#add_requestDate").val(),
		requestProxy : $("#add_requestProxy").val(),
		discription : $("#add_discription").val(),
		insertUser : "system",
//		insertDatetime:getNowFormatDate(),
		deleteFlag : 0,
	}
	var url = "/sysSeed/addSysMenuInfo";
	// 重载
	ajaxPost(url, param, sucessAdd, 1000, findError);
}

function sucessAdd(result) {
	$("#addModal").modal("hide");
	$('#crawler_seed_index_datagrid').bootstrapTable('append', result);
}
//========================================================================
// 修改信息
function loadUpdate(result) {
	$("#upd_uuid").val(result.uuid);
	$("#upd_seedType").val(result.seedType);
	$("#upd_seedName").val(result.seedName);
	$("#upd_seedIcon").val(result.seedIcon);
	$("#upd_seedUrl").val(result.seedUrl);
	$("#upd_charset").val(result.charset);
	$("#upd_requestType").val(result.requestType);
	$("#upd_requestDate").val(result.requestDate);
	$("#upd_requestProxy").val(result.requestProxy);
	$("#upd_discription").val(result.discription);
	$("#upd_deleteFlag").val(result.deleteFlag);
	
	$("#updateModal").modal("show");
}

function updatesubmit() {
	var param = {
		uuid : $("#upd_uuid").val(),
		seedType : $("#upd_seedType").val(),
		seedName : $("#upd_seedName").val(),
		seedIcon : $("#upd_seedIcon").val(),
		seedUrl : $("#upd_seedUrl").val(),
		charset : $("#upd_charset").val(),
		requestType : $("#upd_requestType").val(),
		requestDate : $("#upd_requestDate").val(),
		requestProxy : $("#upd_requestProxy").val(),
		discription : $("#upd_discription").val(),
		insertUser : "system",
//					insertDatetime:getNowFormatDate(),
		deleteFlag : 0,
	}
	var url = "/sysSeed/updateSysSeedInfo";
	// 重载
	ajaxPost(url, param, successUpdate, 1000, findError);
}

function successUpdate(result) {
	$("#updateModal").modal("hide");
	$('#crawler_seed_index_datagrid').bootstrapTable('refresh');
//	$('#crawler_seed_index_datagrid').bootstrapTable('updateRow', {id: result.uuid, row: result});
}

//========================================================================
// 删除成功后
function successdelete(result){
//	j$.each(result, function(index, value) {
//		$('#crawler_seed_index_datagrid').bootstrapTable('remove', {field: 'uuid', values: value.uuid});
//	})
	$('#crawler_seed_index_datagrid').bootstrapTable('refresh');
	alert("删除数据成功！");
}


//========================================================================



//========================================================================



//========================================================================


