window.operateEvents = {
		// 修改
        'click #clickA ': function (e, value, row, index) {
        	modals.openWin({
    	    	winId:"add_config_table",
    	    	title:'修改采集器',
    	    	width:'1500px',
    	    	url:"/task/updBefor?id="+row.id
    	    });
     },
        'click #clickB': function (e, value, row, index) {
        	// 复制
            var url = "/task/copy";
			ajaxPost(url, row, addSysTableTypeInfoSuccess, 5000, findError);
     },
      'click #clickC': function (e, value, row, index) {
    	  // 详细内容配置
    	  // 查询配置规则切换显示页面
    	  loadRule(row.id);
    	  $('#dbm_rule_table_datagrid').bootstrapTable('refresh');
    	  // 切换页面
    	  $("#revenue-chart").addClass("active");
  		  $("#sales-chart").removeClass("active");
  		  $("#li_revenue-chart").addClass("active");
  		  $("#li_sales-chart").removeClass("active");
  		
     },
        'click #clickD': function (e, value, row, index) {
        	// 清除
        	var url = "/task/clean";
			ajaxPost(url, row, addSysTableTypeInfoSuccess, 5000, findError);   
    },
	    'click #clickE': function (e, value, row, index) {
	    	// 删除
	    	bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/task/delete";
						var param={list:[row]};
						ajaxPost(url, param, addSysTableTypeInfoSuccess, 5000, findError);
					}
				}
			});
	},
	'click #clickF': function (e, value, row, index) {
		// 导出
	  	 alert("F");      
	}
}
$(function() {
	$('#addnew_config_table').click(function() {
		modals.openWin({
	    	winId:"add_config_table",
	    	title:'添加采集器',
	    	width:'1500px',
	    	url:"/task/addBefor"
	    });
	});
	$('#deleteold_config_table').click(function() {
		var data = $('#dbm_config_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/task/delete";
						var param={list:data};
						ajaxPost(url, param, addSysTableTypeInfoSuccess, 5000, findError);
					}
				}
			});
		}
	});
	
	$('#start_config_table').click(function() {
		var data = $('#dbm_config_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要启动采集器？",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/task/startAll";
						var param={list:data};
						ajaxPost(url, param, addSysTableTypeInfoSuccess, 5000, findError);
					}
				}
			});
		}
	});
	
	$('#stop_config_table').click(function() {
		var data = $('#dbm_config_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要启动采集器？",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/task/stopAll";
						var param={list:data};
						ajaxPost(url, param, addSysTableTypeInfoSuccess, 5000, findError);
					}
				}
			});
		}
	});
	document.onkeyup = function(event) {
		event = event || window.event;
		$('#dbm_config_table_datagrid').bootstrapTable('refresh');
	};
	$("#search_task_status").select2({
	    tags: true,
	    placeholder: "状态",
	    data: ["请选择","采集中", "未采集","准备", "停止中","停止","已完成", "异常","准备清空"]
	});
	search_task_status = null;
	$('#search_task_status').on('select2:select', function (evt) {
		search_task_status = evt.params.data.text;
		if(search_task_status == "请选择"){
			search_task_status = null;
		}
		$('#dbm_config_table_datagrid').bootstrapTable('refresh');
	});
	$("#search_task_appendixStatus").select2({
	    tags: true,
	    placeholder: "是否有附件",
	    data:[{id:'请选择',text:'请选择'},{id:'0',text:'否'},{id:'1',text:'是'}]
	});
	search_task_appendixStatus = null;
	$('#search_task_appendixStatus').on('select2:select', function (evt) {
		search_task_appendixStatus = evt.params.data.id;
		if(search_task_appendixStatus == "请选择"){
			search_task_appendixStatus = null;
		}
		$('#dbm_config_table_datagrid').bootstrapTable('refresh');
	});
	$("#search_task_timingStart").select2({
	    tags: true,
	    placeholder: "是否定时启动",
	    data:[{id:'请选择',text:'请选择'},{id:'0',text:'否'},{id:'1',text:'是'}]
	});
	search_task_timingStart = null;
	$('#search_task_timingStart').on('select2:select', function (evt) {
		search_task_timingStart = evt.params.data.id;
		if(search_task_timingStart == "请选择"){
			search_task_timingStart = null;
		}
		$('#dbm_config_table_datagrid').bootstrapTable('refresh');
	});
	// bootstrap table
	$('#dbm_config_table_datagrid').bootstrapTable({
		url : "/task/page",
		dataType : "json",
		toolbar : '#dbm_config_table_toolbar', // 工具按钮用哪个容器
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
		uniqueId : "id", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
//		showExport: true,                    
//        exportDataType: 'all',
//        exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],  //导出文件类型
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
		sidePagination: "server", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		 filter: true,
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 searchText: params.searchText,
                 sortOrder:params.sortOrder,
                 sortName:params.sortName,
                 info:{
                	 taskName:$("#search_task_taskName").val(),
                	 status:search_task_status,
                	 appendixStatus:search_task_appendixStatus,
                	 timingStart:search_task_timingStart,
                 }
                 //filter:params.filter
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
//			{title : 'id',field : 'id',align : 'center',sortable : true,valign : 'top',visible:false, filter: { type: "input" }},
			{title : 'id',field : 'id',align : 'center',sortable : true,valign : 'top',visible:false},
			{title : '采集器名称',field : 'taskName',align : 'center',sortable : true,valign : 'top',formatter:urlPathformatter},
//			{title : '采集器名称',field : 'taskName',align : 'center',sortable : true,valign : 'top', filter: { type: "input" },formatter:urlPathformatter},
			{title : '状态',field : 'status',align : 'center',sortable : true,valign : 'top',width:120},
//			{title : '状态',field : 'status',align : 'center',sortable : true,valign : 'top', filter: { type: "select" ,data: ["采集中", "未采集","准备", "停止中","已停止","已完成", "异常"]},width:120},
			{title : '是否有附件',field : 'appendixStatus',align : 'center',sortable : true,valign : 'top',formatter:function(e,value,row,index){ return value.appendixStatus==1?"是":"否"},width:60},
//			{title : '是否有附件',field : 'appendixStatus',align : 'center',sortable : true,valign : 'top',formatter:function(e,value,row,index){ return value.appendixStatus==1?"是":"否"},  filter: { type: "select" ,data: ["是","否"]} ,width:60},
			{title : '是否定时启动',field : 'timingStart',align : 'center',sortable : true,valign : 'top',formatter:function(e,value,row,index){return value.timingStart==1?"是":"否"},width:60},
//			{title : '是否定时启动',field : 'timingStart',align : 'center',sortable : true,valign : 'top',formatter:function(e,value,row,index){return value.timingStart==1?"是":"否"},  filter: { type: "select" ,data: ["是","否"]},width:60},
			{title : '完成任务数',field : 'comfurmTask',sortable : true,align : 'center',valign : 'top', sortable: true,visible:false},
			{title : '错误任务数',field : 'errTask',sortable : true,align : 'center',valign : 'top'},
			{title : '字符集',field : 'characterSet',sortable : true,align : 'center',valign : 'top',visible:false},
			{title : '剩余任务数',field : 'lastTask',sortable : true,align : 'center',valign : 'top'},
//			{title : '地址',field : 'url',align : 'center',sortable : true,valign : 'middle'},
			{title : '请求方式',field : 'postType',sortable : true,align : 'center',valign : 'top',visible:false},
			{title : '请求数据',field : 'postData',sortable : true,align : 'center',valign : 'top',visible:false},
			{title : '线程数',field : 'threadNumber',sortable : true,align : 'center',valign : 'top',visible:false},
			{title : '执行频率',field : 'executeType',align : 'center',sortable : true,valign : 'top', formatter:function(e,row,index){if(row.executeType){ return "<span>每"+row.executeType+"天</span>";}}},
			{title : '执行时间',field : 'executeTime',align : 'center',sortable : true,valign : 'top',width:35},
//			{title : '请求头信息',field : 'head',align : 'center',sortable : true,valign : 'top'},
			{title : '最后执行结束时间',field : 'executeLastTime',align : 'center',sortable : true,valign : 'middle',formatter:dateTimeFormatter,width:35},
			{title : '创建时间',field : 'createTime',align : 'center',sortable : true,valign : 'top',formatter:dateTimeFormatter,visible:false},
			{title : '更新时间',field : 'updateTime',align : 'center',sortable : true,valign : 'top',formatter:dateTimeFormatter,visible:false},
			{title : '操作',align : 'left',sortable : true,valign : 'top',  events: operateEvents,formatter:optionFormatter ,width:240},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
//	self.setInterval(function(){
//		$('#dbm_config_table_datagrid').bootstrapTable('resetView');
//	},1000)
});
// 窗口大小改变时 重设表头
//$(window).resize(function() {
//	$('#dbm_config_table_datagrid').bootstrapTable('resetView');
//});

function urlPathformatter(e,row,index){
	return "<a href='"+row.url+"' target='_blank'>"+row.taskName+"</a>";
}

function optionFormatter(e,row,index){
	var statue = row.status;
	var result = "<i  type='button' id='clickB'  class=' btn btn-default fa fa-copy' title='复制'></i> ";
	 
	if(statue == "采集中"||statue == "准备"){
		return result;
	}
	return result
		+ "<i  type='button' id='clickA'  class=' btn btn-default fa fa-edit' title='编辑' ></i> "
		+"<i  type='button' id='clickC'  class=' btn btn-default fa fa-puzzle-piece' title='配置规则'></i> "
		  +"<i  type='button' id='clickD'  class=' btn btn-default fa fa-recycle' title='清空'></i> "
		  +"<i  type='button' id='clickE'  class=' btn btn-default fa fa-remove' title='删除'></i> "
		  ;
//		  +"<i  type='button' id='clickF'  class=' btn btn-default fa fa-download' title='导出'></i> ";
}




function addSysTableTypeInfoSuccess(result){
	$('#dbm_config_table_datagrid').bootstrapTable('refresh');
}