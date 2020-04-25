window.operateEvents = {
	// 修改
	'click #clickA ': function (e, value, row, index) {
		// 打开modal
		modals.openWin({
	    	winId:"add_rule_group_table",
	    	title:'添加规则组',
	    	width:'95%',
	    	url:"/pages/crawler/rule/add.html"
	    });
		
		// 反填数据
		setTimeout(function(){
			$("#add_ruler_group_uuid").val(row.uuid);
			$("#add_ruler_name").val(row.name);
			$("#add_ruler_type").val(row.type);
			$("#detailConfText").val(row.contentInfo);
			
				
		}, 500);
		
	
	},
	'click #clickB ': function (e, value, row, index) {
	},
	'click #clickC ': function (e, value, row, index) {
	},
	'click #clickD ': function (e, value, row, index) {
	}
}
$(function() {
	init();
});
var search_task_urlType = null;
var search_task_taskUuid=null;
// 初始化 
function init(){
	
	// 初始化规则组
	loadRuleGroup();
	
	// 绑定按钮事件
	bindClick();
}

// 绑定按钮事件
function bindClick(){
	// 组添加按钮点击
	$("#add_crawler_rule_group_config_btn").bind("click",function(){
		// 打开添加窗口
		modals.openWin({
	    	winId:"add_rule_group_table",
	    	title:'添加规则组',
	    	width:"95%",
	    	url:"/pages/crawler/rule/add.html"
	    });
	});
	// 组删除事件点击
	$("#del_crawler_rule_group_config_btn").bind("click",function(){
		var rows = $('#crawler_rule_group_config_table_datagrid').bootstrapTable("getAllSelections");
		if(rows.length >= 1){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var submiturl = "/sysCrawlerRulerInfo/deleteAll";
						ajaxPost(submiturl, {list:rows}, refreshGroupTable);
					}
				}
			});
			
		}
	});
	
	// 返回点击事件
	$("#add_crawler_rule_fallback_btn").bind("click",function(){
		loadPage("/pages/crawler/task/index.html");
	});
	
	// 启动点击事件
	$("#start_rule_table").bind("click",function(){
		var rows = $('#crawler_rule_group_config_table_datagrid').bootstrapTable("getAllSelections");
		if(rows.length >= 1){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要启动任务",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var submiturl = "/sysCrawlerRulerInfo/start";
						ajaxPost(submiturl, {list:rows}, refreshGroupTable);
					}
				}
			});
			
		}
	});
	
	// 启动点击事件
	$("#stop_rule_table").bind("click",function(){
		var rows = $('#crawler_rule_group_config_table_datagrid').bootstrapTable("getAllSelections");
		if(rows.length >= 1){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要停止任务",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var submiturl = "/sysCrawlerRulerInfo/stop";
						ajaxPost(submiturl, {list:rows}, refreshGroupTable);
					}
				}
			});
			
		}
	});
	
	
	
}
function refreshGroupTable(){
	$('#crawler_rule_group_config_table_datagrid').bootstrapTable('refresh');
}

// 初始化规则组
function loadRuleGroup(){

	// bootstrap table
	$('#crawler_rule_group_config_table_datagrid').bootstrapTable({
		url : "/sysCrawlerRulerInfo/page",
		dataType : "json",
		toolbar : '#crawler_rule_group_table_toolbar', // 工具按钮用哪个容器
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
//		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		singleSelect : true,
//		showExport: true,                    
//        exportDataType: 'all',
//        exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],  //导出文件类型
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
		sidePagination: "server", // 服务端处理分页 server client
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
			var param = {
				pageNumber : params.pageNumber,
				pageSize : params.pageSize,
				sortOrder : params.sortOrder,
				sortName : params.sortName,
				info : {
					taskUuid:taskUuid
				}
			};
			return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'left',valign : 'middle'},
			{title : 'uuid',field : 'uuid',align : 'left',sortable : true,valign : 'middle',visible:false},
			{title : '规则名称',field : 'name',align : 'left',sortable : true,valign : 'middle'},
			{title : '规则类型',field : 'type',sortable : true,align : 'left',valign : 'middle', sortable: true},
			{title : '状态',field : 'statue',sortable : true,align : 'left',valign : 'middle',formatter:statueFormatter},
			{title : '修改时间',field : 'updateTime',sortable : true,align : 'left',valign : 'middle'},
			{title : '操作', align : 'left',valign : 'middle', events: operateEvents,formatter : function(value, row, index) {
				var A = "<i  type='button' id='clickA'  class=' btn btn-default fa fa-edit' title='编辑' ></i> ";
				var B = "<i  type='button' id='clickB'  class=' btn btn-default fa fa-remove' title='删除'></i> ";
				return A + B;
			}},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.data.content,total:result.data.totalElements};
		}, 
		onClickRow:function(row,index){
	    },
	});
}

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_rule_table_datagrid').bootstrapTable('resetView');
});

function statueFormatter(value){
	if(value==0){
		return "未启动";
	}else if(value=="-1"){
		return "有错误";
	}else if(value=="1"){
		return "采集中";
	}else if(value=="2"){
		return "采集完";
	}else if(value=="-2"){
		return "空数据";
	}else {
		return "有问题";
	}
}

