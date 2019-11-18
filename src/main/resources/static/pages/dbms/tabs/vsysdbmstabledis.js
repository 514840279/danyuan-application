window.vSysDbmsTableDisOperateEvents = {
	// 修改
	'click #clickA ': function (e, value, row, index) {
		var url="/vSysDbmsTableDis/detail/"+row['uuid'];
		loadPage(url);
	},
	// 下载
	'click #clickB ': function (e, value, row, index) {
		var url="/vSysDbmsTableDis/runsql";
		ajaxPost(url,row,refreshVSysDbmsTableDis)
	}
}

$(function() {
	// 初始化
	init();
});

// 初始化
function init() {

	// bootstrap table 初始化
	$('#dbms_tabs_vSysDbmsTableDis_datagrid').bootstrapTable({
		url : "/vSysDbmsTableDis/page",
		dataType : "json",
		toolbar : '#dbms_tabs_vSysDbmsTableDis_toolbar', // 工具按钮用哪个容器
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
		search : false, // 显示搜索框
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
				sortName:params.sortName==null?'tabsRows':params.sortName,
				filter:params.filter,
				info:{
				}
			}; 
			return param;
		},
		columns : [ 
			{title : '全选',	checkbox : true,align : 'center',valign : 'middle'}, 
			{title : 'id',field : 'uuid',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '数据库表名',	field : 'tabsName','width':150,align : 'left',sortable : false,valign : 'middle',switchable:true,visible:true},
			{title : '表的含义',	field : 'tabsDesc','width':150,align : 'left',sortable : false,valign : 'middle',switchable:true,visible:true},
			{title : '数据库类型',	field : 'type','width':150,align : 'left',sortable : false,valign : 'middle',switchable:true,visible:true},
			{title : '类型名',	field : 'typeName','width':150,align : 'left',sortable : false,valign : 'middle',switchable:true,visible:true},
			{title : '数据库表数据量',	field : 'tabsRows','width':150,align : 'right',sortable : false,valign : 'middle',switchable:true,visible:true},
			{title : 'disSql',	field : 'disSql','width':150,align : 'left',sortable : false,valign : 'middle',switchable:true,visible:false},
			{title : 'dropSql',	field : 'dropSql','width':150,align : 'left',sortable : false,valign : 'middle',switchable:true,visible:false},
			{title : 'renameSql',	field : 'renameSql','width':150,align : 'left',sortable : false,valign : 'middle',switchable:true,visible:false},
			{title : 'resetSql',	field : 'resetSql','width':150,align : 'left',sortable : false,valign : 'middle',switchable:true,visible:false},
			{title : '操作',align : 'left','width':180,sortable : true,valign : 'middle',switchable:true,visible:true,events: vSysDbmsTableDisOperateEvents,formatter : function(value, row, index) {
				var A = "<i  type='button' id='clickA'  class=' btn btn-default fa fa-edit' title='详细内容' >详细内容</i>  ";
				var B = "<i  type='button' id='clickB'  class=' btn btn-default fa fa-edit' title='执行' >执行</i>";
				return A+B;
			}}
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.data.content,total:result.data.totalElements}; // 绑定数据 
		},
		onLoadError: function(status,result){  // 成功时执行
			if($(result.responseText).find("form").attr("action")=="/login"){
				window.location.href="/";
			}
		},
		contextMenu: '#context-menu', // 右键菜单绑定
		onContextMenuItem: function(row,$ele){ // 右键菜单事件
		}
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) { // 行双击事件 
	}).on('click-row.bs.table', function (e, row, ele,field) { // 行单击事件
	});
}
// 表格重载 事件
function refreshVSysDbmsTableDis(){
	$('#dbms_tabs_vSysDbmsTableDis_datagrid').bootstrapTable('refresh');
}

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbms_tabs_vSysDbmsTableDis_datagrid').bootstrapTable('resetView');
});


