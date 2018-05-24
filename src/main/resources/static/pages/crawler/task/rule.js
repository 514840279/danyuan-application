window.operateEventsr = {
		// 修改
        'click #rclickA ': function (e, value, row, index) {
        	modals.openWin({
    	    	winId:"add_config_rule_table",
    	    	title:'修改采集器',
    	    	width:'1500px',
    	    	url:"/taskRule/updBefor?id="+row.id.id+"&ruleId="+row.id.ruleId
    	    });
    },
    	'click #rclickB': function (e, value, row, index) {
    	// 复制
    		var url = "/taskRule/save";
    		var typerow = row;
    		typerow.id.ruleId = null;
    		typerow.updateTime = null;
			ajaxPost(url, typerow, addRuleSuccess, 5000, findError);
    },
    	'click #rclickE': function (e, value, row, index) {
	    	// 删除
	    	bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/taskRule/delete";
						var param={list:[row]};
						ajaxPost(url, param, addRuleSuccess, 5000, findError);
					}
				}
			});
	}
}
$(function() {
	$("#rule_left").click(function(){
		$("#sales-chart").addClass("active");
		$("#revenue-chart").removeClass("active");
		$("#li_sales-chart").addClass("active");
		$("#li_revenue-chart").removeClass("active");
		 _rule = "";
		$('#dbm_rule_table_datagrid').bootstrapTable("destroy")
	})
	$('#deleteold_rule_table').click(function() {
		var data = $('#dbm_rule_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/taskRule/delete";
						var param={list:data};
						ajaxPost(url, param, addRuleSuccess, 5000, findError);
					}
				}
			});
		}
	});
	
	$('#addnew_rule_table').click(function() {
		modals.openWin({
	    	winId:"add_config_rule_table",
	    	title:'添加采集器',
	    	width:'1500px',
	    	url:"/taskRule/addBefor?id="+_rule
	    });
	});
});
var _rule = "";
function loadRule(id){
	_rule = id;
	
	// bootstrap table
	$('#dbm_rule_table_datagrid').bootstrapTable({
		url : "/taskRule/page",
		dataType : "json",
		toolbar : '#dbm_config_rule_toolbar', // 工具按钮用哪个容器
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
			console.log(params);
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 info:{ id:{id:_rule}},
                 sortOrder:params.sortOrder,
                 sortName:params.sortName,
                 filter:params.filter
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
//			{title : 'id',field : 'id',align : 'center',sortable : true,valign : 'top',visible:false},
			{title : '规则名称',field : 'name',align : 'center',sortable : true,valign : 'top'},
			{title : '规则类型',field : 'type',sortable : true,align : 'center',valign : 'top', sortable: true},
			{title : '规则内容',field : 'context',sortable : true,align : 'center',valign : 'top'},
			{title : '规则状态',field : 'status',sortable : true,align : 'center',valign : 'top',formatter:statusFormatter},
			{title : '修改时间',field : 'updateTime',sortable : true,align : 'center',valign : 'top',formatter:dateTimeFormatter},
			{title : '操作',align : 'center',sortable : true,valign : 'top',  events: operateEventsr,formatter:optionFormatterr },
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
}

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_rule_table_datagrid').bootstrapTable('resetView');
});

function statusFormatter(e,row,index){
	var showtext = "有效";
	if(row.status == 0){
		showtext = "无效"
	}
	return "<span>"+showtext+"</span>"
}
function optionFormatterr(e,row,index){
	return "<i  type='button' id='rclickA'  class=' btn btn-default fa fa-edit' title='编辑' ></i> "
			+"<i  type='button' id='rclickB'  class=' btn btn-default fa fa-copy' title='复制'></i> "
		  +"<i  type='button' id='rclickE'  class=' btn btn-default fa fa-remove' title='删除'></i> "
}


function addRuleSuccess(result){
	$('#dbm_rule_table_datagrid').bootstrapTable('refresh');
}