$(function() {
	$('#addnew').click(function() {
		$("#addModal").modal({
			show:true,
		});
	});
	$('#editold').click(function() {
		
		$("#updateModal").modal("show");
	});
	
	$('#deleteold').click(function() {
		
		this.parent.bootbox.setLocale("zh_CN");
		this.parent.bootbox.confirm({
		message : "确定要删除选定行",
		title : "系统提示",
		callback : function(result) {
			if (result) {
				var param = {
				}
				// 重载
				var url = "/sysMenuInfo/deleteSysMenuInfo";
				ajaxPost(url, param, successdelete, 1000, findError);
			}
		}
		});
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
		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',	field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
			{title : '网站类型',field : 'seedType',sortable : true,align : 'center'},
			{title : '网站名称',field : 'seecName',align : 'center',sortable : true,valign : 'middle'	},
			{title : '网站商标',field : 'seecIcon',align : 'center',sortable : true,valign : 'middle'},
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
		seecName : $("#add_seecName").val(),
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
	alert(result);
	$("#addModal").modal("hide");
}
//========================================================================
// 修改信息
function loadUpdate(result) {
	$("#upd_uuid").val(result.uuid);
	$("#upd_name").val(result.name);
	$("#upd_icon").val(result.icon);
	$("#upd_discription").val(result.discription);
	$("#upd_uri").val(result.uri);
	$("#upd_parentId").val(result.parentsId);
	$("#upd_sort").val(result.sort);
	$("#upd_deleteFlag").val(result.deleteFlag);
	
	$("#updateModal").modal("show");
}

function updatesubmit() {
	var param = {
		uuid : getUuid(),
		seedType : $("#add_seedType").val(),
		seecName : $("#add_seecName").val(),
		seedIcon : $("#add_seedIcon").val(),
		seedUrl : $("#add_seedUrl").val(),
		charset : $("#add_charset").val(),
		requestType : $("#add_requestType").val(),
		requestDate : $("#add_requestDate").val(),
		requestProxy : $("#add_requestProxy").val(),
		discription : $("#add_discription").val(),
		insertUser : "system",
//					insertDatetime:getNowFormatDate(),
		deleteFlag : 0,
	}
	var url = "/sysMenuInfo/updateSysMenuInfo";
	// 重载
	ajaxPost(url, param, successUpdate, 1000, findError);
}

function successUpdate(result) {
	$("#updateModal").modal("hide");
}

//========================================================================



//========================================================================



//========================================================================



//========================================================================


