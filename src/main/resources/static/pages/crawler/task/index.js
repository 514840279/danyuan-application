var add_task_requestType = null;
var taskdata = {};
window.operateEvents = {
	// 修改
	'click #clickA ' : function(e, value, row, index) {
		modals.openWin({
			winId : "add_crawler_config_table_modal",
			title : '修改任务',
			width : '1500px',
			url : "/pages/crawler/task/add.html"
		});
		// 
		setTimeout(() => {
			taskdata = row;
			console.log(taskdata);
			 $("#add_task_url").val(taskdata.url);
			 $("#add_task_taskName").val(taskdata.taskName);
			 $("#add_task_urlType").val(taskdata.urlType);
			 $("#add_task_webIcon").val(taskdata.webIcon);
			 $("#add_task_uuid").val(taskdata.uuid);
		}, 300);
		

	},
	'click #clickB ' : function(e, value, row, index) {
		loadPage("/sysCrawlerTaskInfo/config/"+row['uuid'])
	},
	'click #clickE' : function(e, value, row, index) {
		// 删除
		bootbox.setLocale("zh_CN");
		bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
				if (result) {
					var data = $('#crawler_task_config_table_datagrid')
							.bootstrapTable('getAllSelections');
					var url = "/sysCrawlerTaskInfo/delete";
					ajaxPost(url, row, addSysCrawlerTaskInfoSuccess, 5000,
							findError);
				}
			}
		});
	}
}

$(function() {
	$('#addnew_config_table').click(function() {
		// 打开添加窗口
		modals.openWin({
			winId : "add_crawler_config_table_modal",
			title : '添加任务',
			width : '1500px',
			url : "/pages/crawler/task/add.html"
		});

	});
	$('#deleteold_config_table').click(function() {
		var data = $('#crawler_task_config_table_datagrid')
				.bootstrapTable('getAllSelections');
		if (data.length == 0) {
			alert("先选中数据");
		} else if (data.length > 0) {
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
				message : "确定要删除选定行",
				title : "系统提示",
				callback : function(result) {
					if (result) {
						var url = "/sysCrawlerTaskInfo/deleteAll";
						var param = {
							list : data
						};
						ajaxPost(url, param,
								addSysCrawlerTaskInfoSuccess, 5000,
								findError);
					}
				}
			});
		}
	});

	$('#start_config_table').click(function() {
		var data = $('#crawler_task_config_table_datagrid')
				.bootstrapTable('getAllSelections');
		if (data.length == 0) {
			alert("先选中数据");
		} else if (data.length > 0) {
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
				message : "确定要启动采集器？",
				title : "系统提示",
				callback : function(result) {
					if (result) {
						var url = "/python/start/run";
						var param = {
							list : data
						};
						ajaxPost(url, param,
								addSysCrawlerTaskInfoSuccess, 5000,
								findError);
					}
				}
			});
		}
	});

	$('#stop_config_table').click(function() {
		var data = $('#crawler_task_config_table_datagrid')
				.bootstrapTable('getAllSelections');
		if (data.length == 0) {
			alert("先选中数据");
		} else if (data.length > 0) {
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
				message : "确定要启动任务？",
				title : "系统提示",
				callback : function(result) {
					if (result) {
						var url = "/sysCrawlerTaskInfo/stopAll";
						var param = {
							list : data
						};
						ajaxPost(url, param,
								addSysCrawlerTaskInfoSuccess, 5000,
								findError);
					}
				}
			});
		}
	});

	$("#search_task_excuteFlag").select2({
		tags : true,
		placeholder : "状态",
		data : [ {
			id : '请选择',
			text : '请选择'
		}, {
			id : '0',
			text : '停止'
		}, {
			id : '1',
			text : '执行中'
		} ]
	});
	search_task_excuteFlag = null;
	$('#search_task_excuteFlag').on('select2:select', function(evt) {
		search_task_excuteFlag = evt.params.data.id;
		if (search_task_excuteFlag == "请选择") {
			search_task_excuteFlag = null;
		}
		$('#crawler_task_config_table_datagrid').bootstrapTable('refresh');
	});

	// bootstrap table
	$('#crawler_task_config_table_datagrid').bootstrapTable({
		url : "/sysCrawlerTaskInfo/page",
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
		// height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		// showExport: true,
		// exportDataType: 'all',
		// exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],
		// //导出文件类型
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
		search : true, // 显示搜索框
		sidePagination : "server", // 服务端处理分页 server
		// 设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder
		// 设置为limit可以获取limit, offset, search, sort, order
		queryParamsType : "undefined",
		contentType : "application/json",
		method : "post", // 使用get请求到服务器获取数据
		filter : true,
		queryParams : function queryParams(params) {
			var param = {
				pageNumber : params.pageNumber,
				pageSize : params.pageSize,
				searchText : params.searchText,
				sortOrder : params.sortOrder,
				sortName : params.sortName,
				info : {
					taskName : $("#search_task_taskName").val(),
					excuteFlag : search_task_excuteFlag
				},
				filter : params.filter
			};
			return param;
		},
		columns : [ 
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle',visible : false},
			{title : '任务名称',field : 'taskName',align : 'center',sortable : true,valign : 'middle'},
			{title : '网站类型',field : 'urlType',align : 'center',sortable : true,valign : 'middle',width : 120,	formatter : urlPathformatter},
			{title : '网站图标',field : 'webIcon',align : 'center',sortable : true,valign : 'middle',width : 60,formatter : imgShowFormatter},
			{title : '网址',field : 'url',sortable : true,align : 'center',valign : 'middle',sortable : true,	visible : false},
			{title : '字符集',field : 'charset',sortable : true,align : 'center',	valign : 'middle',visible : false},
			{title : '任务启动时间',field : 'startTime',sortable : true,align : 'center',valign : 'middle',visible : false},
			{title : '最后一次执行时间',field : 'lastExcuteTime',align : 'center',sortable : true,valign : 'middle'},
			{title : '预计剩余任务数',field : 'surplusNum',align : 'center',sortable : true,valign : 'middle',width : 35},
			{title : '执行成功任务数',field : 'successNum',align : 'center',sortable : true,valign : 'middle',width : 35},
			{title : '是否是通用任务',field : 'taskFlag',	align : 'center',sortable : true,valign : 'middle',width : 35},
			{title : '错误任务数',field : 'errorNum',align : 'center',sortable : true,valign : 'middle',width : 35},
			{title : '执行标记',field : 'excuteFlag',align : 'center',sortable : true,valign : 'middle',width : 35},
			{title : '执行命令',field : 'excuteBatch',align : 'center',sortable : true,valign : 'middle',	width : 35,visible : false},
			{title : '创建时间',field : 'createTime',align : 'center',sortable : true,valign : 'middle',visible : false},
			{title : '更新时间',field : 'updateTime',align : 'center',sortable : true,valign : 'middle',visible : false},
			{title : '操作',align : 'left',sortable : true,valign : 'middle',	events : operateEvents,formatter : optionFormatter,width : 240},
		],
		responseHandler : function(result) { // 成功时执行
			return {
				rows : result.content,
				total : result.totalElements
			};
		},
	});
});

function urlPathformatter(e, row, index) {
	return "<a href='" + row.url + "' target='_blank'>" + row.taskName + "</a>";
}
function imgShowFormatter(value, row, index) {
	return "<img src='" + value + "'/>";
}
function optionFormatter(e, row, index) {
	var result = "<i  type='button' id='clickA'  class=' btn btn-default fa fa-edit' title='编辑' ></i> "
			+ "<i  type='button' id='clickE'  class=' btn btn-default fa fa-remove' title='删除'></i> "
			+ "<i  type='button' id='clickB'  class=' btn btn-default fa fa-cog' title='配置'></i> ";
	return result;
}

function addSysCrawlerTaskInfoSuccess(result) {
	$('#crawler_task_config_table_datagrid').bootstrapTable('refresh');
	// $("#add_crawler_config_table_modal").modal('hide');
}