$(function() {
	$('#addnew_colum').click(function() {
		$("#addModal_colum").modal({
			show:true,
		});
	});
	$('#editold_colum').click(function() {
		var data = $('#crawler_seed_roler_colum_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 1){
			alert("只能选择一条");
		}else{
			loadUpdate(data[0]);
		}
	});
	
	$('#deleteold_colum').click(function() {
		
		var data = $('#crawler_seed_roler_colum_datagrid').bootstrapTable('getAllSelections');
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
	
	// bootstrap table
	$('#crawler_seed_roler_colum_datagrid').bootstrapTable({
		url : "/sysRolerColum/findAll",
		dataType : "json",
		toolbar : '#toolbar3', // 工具按钮用哪个容器
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
		sidePagination: "client", // 服务端处理分页
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
//			{title : '规则id',	field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
			{title : '列名称',field : 'columName',sortable : true,align : 'center'},
			{title : '取内容规则',field : 'roler',align : 'center',sortable : true,valign : 'middle'	},
			{title : '处理方式',field : 'type',align : 'center',sortable : true,valign : 'middle'},
			{title : 'split 1字符串',field : 'spl1',	align : 'center',sortable : true,valign : 'middle'},
			{title : 'split 2整型脚标',	field : 'spl2',	sortable : true,align : 'center'},
			{title : 'apand 方式 字符',field : 'app1',	sortable : true,align : 'center'},
			{title : 'apand 字符',	field : 'app2',sortable : true,align : 'center'},
			{title : 'array 取一个 整型',	field : 'arr',sortable : true,align : 'center'},
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

