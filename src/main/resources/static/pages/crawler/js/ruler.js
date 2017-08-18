$(function() {
	$('#addnew_ruler').click(function() {
		loadUpdate_ruler("");
	});
	$('#editold_ruler').click(function() {
		var data = $('#crawler_seed_ruler_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 1){
			alert("只能选择一条");
		}else{
			loadUpdate_ruler(data[0]);
		}
	});
	
	$('#deleteold_ruler').click(function() {
		
		var data = $('#crawler_seed_ruler_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var uuid = $("#role_seed_uuid").text();
						var param = {
								list:data,
								uuid:uuid,
						};
						// 重载
						var url = "/sysRuler/deleteSysRulerInfo";
						ajaxPost(url, param, sucessAddruler, 1000, findError);
					}
				}
			});
		}
	});
	$('#result_manager_role_manager').click(function() {
		var data = $('#crawler_seed_ruler_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 0){
			
			$("#add_ruler_uuid_manager").text(data[0].uuid);
			$("#add_ruler_name_manager").text(data[0].name);
			$("#add_ruler_subUri_manager").text(data[0].subUri);
			$("#add_ruler_requestType_manager").text(data[0].requestType);
			$("#add_ruler_charset_manager").text(data[0].charset);
			$("#add_ruler_discription_manager").text(data[0].discription);
			$("#add_ruler_type_manager").text(data[0].type);
			ruler_column(data[0]);
			$("#addModal_ruler_manager").modal({
				show:true,
				
			})
		}
	});
	// add ruler
	$('#add_ruler_button_apply').click(function() {
		if($("#add_ruler_subUri").val()==null){
			alert("配对地址必须填入");
			return;
		}
		add_ruler_submit();
	});
	
	$('#result_manager').click(function() {
		alert("也准备做点什么！");
	});
});
function ruler(data) {
	$('#crawler_seed_ruler_datagrid').bootstrapTable("destroy");
	// bootstrap table
	$('#crawler_seed_ruler_datagrid').bootstrapTable({
		url : "/sysRuler/findAll",
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
		height : 350, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
		showExport: true,                     //是否显示导出
		exportDataType: "basic",              //basic', 'all', 'selected'.
		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/x-www-form-urlencoded",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
	                 pageNumber: params.pageNumber,    
	                 pageSize: params.pageSize,
	                 searchText:params.searchText,
	                 uuid:data.uuid,
	             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',	field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
			{title : '页面类型',field : 'type',align : 'center',sortable : true,valign : 'middle'	},
			{title : '名称',field : 'name',align : 'center',sortable : true,valign : 'middle'},
			{title : '配对网址段',field : 'subUri',	align : 'center',sortable : true,valign : 'middle'},
			{title : '请求操作',field : 'requestType',	sortable : true,align : 'center'},
			{title : '字符集',	field : 'charset',sortable : true,align : 'center'},
			{title : '描述',	field : 'discription',sortable : true,align : 'center'}
		]
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#crawler_seed_ruler_datagrid').bootstrapTable('resetView');
	});

};
function imgshow(value,row,index){
	return "<img src='"+value+"'>";
} 

// ========================================================================
// 添加数据
function add_ruler_submit() {
	var param = {
		uuid : $("#add_ruler_uuid").val(),
		seedUuid : $("#role_seed_uuid").text(),
		type : $("#add_ruler_type").val(),
		name : $("#add_ruler_name").val(),
		subUri : $("#add_ruler_subUri").val(),
		requestType : $("#add_ruler_requestType").val(),
		charset : $("#add_ruler_charset").val(),
		discription : $("#add_ruler_discription").val(),
		insertUser : "system",
		deleteFlag : 0,
	}
	var url = "/sysRuler/addSysRuler";
	// 重载
	ajaxPost(url, param, sucessAddruler, 1000, findError);
}
function sucessAddruler(result){
	$('#crawler_seed_ruler_datagrid').bootstrapTable('refresh');
	$("#addModal_ruler").modal("hide");
}
// =========================================================================
// 修改数据
function loadUpdate_ruler(result){
	var uuid = getUuid();
	if(result!= ""){
		$("#add_ruler_uuid").val(result.uuid);
		$("#add_ruler_name").val(result.name);
		$("#add_ruler_subUri").val(result.subUri);
		$("#add_ruler_requestType").val(result.requestType);
		$("#add_ruler_charset").val(result.charset);
		$("#add_ruler_discription").val(result.discription);
		$("#add_ruler_type").val(result.type);
	}else{
		$("#add_ruler_uuid").val(uuid);
		$("#add_ruler_name").val("");
		$("#add_ruler_requestType").val("");
		$("#add_ruler_charset").val("");
		$("#add_ruler_discription").val("");
		$("#add_ruler_type").val("");
		$("#add_ruler_subUri").val("");
	}
	$("#addModal_ruler").modal({
		show:true,
	});
}
// ============================================================================