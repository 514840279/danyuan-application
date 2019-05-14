window.operateEvents = {
    'click #clickA ': function (e, value, row, index) {
    	// 恢复
    	bootbox.setLocale("zh_CN");
		bootbox.confirm({
		message : "确定要恢复选定行",
		title : "系统提示",
		callback : function(result) {
				if (result) {
					var url = "/sysShareFilePathInfo/resave";
					ajaxPost(url, row, refresh);
				}
			}
		});
    },
    'click #clickE': function (e, value, row, index) {
    	// 删除
    	bootbox.setLocale("zh_CN");
		bootbox.confirm({
		message : "确定要删除选定行",
		title : "系统提示",
		callback : function(result) {
				if (result) {
					var url = "/sysShareFilePathInfo/delete";
					ajaxPost(url, row, refresh);
				}
			}
		});
	}
}
$(function() {
	// 初始化
	init();
});


// 初始化
function init() {
	

	// bootstrap table 初始化
	$('#share_file_sysShareFilePathInfo_datagrid').bootstrapTable({
		url : "/sysShareFilePathInfo/page",
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
		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
		search : true, // 显示搜索框
		sidePagination : "server", // 服务端处理分页
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
		//设置为limit可以获取limit, offset, search, sort, order  
		queryParamsType : "undefined",
		contentType : "application/json",
		method : "post", // 使用get请求到服务器获取数据
		queryParams: function queryParams(params) {  
			var param = {  
				pageNumber: params.pageNumber,    
				pageSize: params.pageSize,
				sortOrder:params.sortOrder,
				sortName:params.sortName,
				filter:params.filter,
				info:{
					md5: $("#search_share_file_sysShareFilePathInfo_md5").val()==""?null:$("#search_share_file_sysShareFilePathInfo_md5").val(),
				}
			}; 
			return param;
		},
		columns : [ 
			{title : '全选',	checkbox : true,align : 'center',valign : 'middle'}, 
			{title : 'id',field : 'uuid',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '大小',	field : 'fileSize','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '网盘密码',	field : 'password','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '文件名',	field : 'fileName','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '路径',	field : 'path','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '操作','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true, events: operateEvents,formatter:optionFormatter },
			{title : '创建时间',	field : 'createTime',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '创建者',	field : 'createUser',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '更新时间',	field : 'updateTime',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '更新者',	field : 'updateTime',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '标记',		field : 'deleteFlag',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false}
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.data.content,total:result.data.totalElements}; // 绑定数据 
		},
		contextMenu: '#context-menu', // 右键菜单绑定
		onContextMenuItem: function(row,$ele){ // 右键菜单事件
		}
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) { // 行双击事件 
	}).on('click-row.bs.table', function (e, row, ele,field) { // 行单击事件
	});
}
// 表格重载 事件
function refresh(){
	$('#share_file_sysShareFilePathInfo_datagrid').bootstrapTable('refresh');
}

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#share_file_sysShareFilePathInfo_datagrid').bootstrapTable('resetView');
});

function optionFormatter(e,row,index){
	var result=   "<i  type='button' id='clickA'  class=' btn btn-default fa fa-edit' title='恢复' ></i> "
		  +"<i  type='button' id='clickE'  class=' btn btn-default fa fa-remove' title='删除'></i> "
		  ;
	return result;
}

