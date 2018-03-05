search_kejiju_chengguo_completedDate ="";
search_kejiju_chengguo_resultType ="";
//表格  - 操作 - 事件
window.actionEvents = {
	'click #showDetail': function(e, value, row, index) {  
		console.log(row);
		data = row;
      //修改操作
		loadPage('/kjcgJbxxInfo/showDetail','chengguo_showDetail','详细成果',data,'reload');
    }
}
$(function() {
	ajaxPost("/kjcgJbxxInfo/dicCglx", null, findResultTypeSuccess, 5000, findError);
	
	ajaxPost("/kjcgJbxxInfo/dicCgsj", null, findCompletedDateSuccess, 5000, findError);
	
	$('#search_kejiju_chengguo_button').click(function() {
		$('#kejiju_chengguo_table_datagrid').bootstrapTable('refresh');
	});
	
	$('#addnew_chengguo').click(function() {
		loadPage('/kjcgJbxxInfo/upd','chengguo_add','添加成果',null,'reload');
	});
	$('#editold_chengguo').click(function() {
		var data = $('#kejiju_chengguo_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			var datetemp = data[0];
//			datetemp.createTime="";
			loadPage('/kjcgJbxxInfo/upd','chengguo_upd','更新成果',data[0],'reload');
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_chengguo').click(function() {
		
		var data = $('#kejiju_chengguo_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						// 重载
						var url = "/kjcgJbxxInfo/delete";
						var param={list:data};
						ajaxPost(url, param, addkejiju_chengguo_tableSuccess, 5000, findError);
					}
				}
			});
		}
	});
	


	// bootstrap table
	$('#kejiju_chengguo_table_datagrid').bootstrapTable({
		url : "/kjcgJbxxInfo/page",
		dataType : "json",
		toolbar : '#chengguo-toolbar', // 工具按钮用哪个容器
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
        contentType: "application/x-www-form-urlencoded",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) { 
			console.log(search_kejiju_chengguo_completedDate+search_kejiju_chengguo_resultType)
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 username:username,
                 projectName:$("#search_kejiju_chengguo_projectName").val(),
                 completedDate:search_kejiju_chengguo_completedDate,
                 resultType:search_kejiju_chengguo_resultType
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '本地唯一标识',field : 'resultId',sortable : true,align : 'center',visible:false},
			{title : '所属项目编码',field : 'projectId',sortable : true,align : 'center',visible:false},
			{title : '所属项目名称',field : 'projectName',align : 'center',sortable : true,valign : 'middle'},
			{title : '成果类型',field : 'resultType',sortable : true,align : 'center'},
			{title : '成果名称',field : 'resultTitle',sortable : true,align : 'center'},
			{title : '关键词',field : 'keyword',sortable : true,align : 'center',visible:false},
			{title : '成果概述',field : 'resultAbstract',align : 'center',sortable : true,valign : 'middle'},
			{title : '成果相关文档',field : 'resultLinks',sortable : true,align : 'center',visible:false,visible:false},
			{title : '成果完成人',field : 'completedby',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '成果完成单位',field : 'completedOrganization',align : 'center',sortable : true,valign : 'middle'},
			{title : '成果完成时间',field : 'completedDate',sortable : true,align : 'center'},
			{title : '获奖情况',field : 'awards',align : 'center',sortable : true,valign : 'middle'},
			{title : '中图分类号',field : 'cdc',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '学科分类代码',field : 'discipline',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '行业分类代码',field : 'industry',sortable : true,align : 'center',visible:false},
			{title : '其他分类代码',field : 'otherCode',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '详情',align : 'center',
				events: actionEvents,
				formatter : function(value, row, index) {
//					var e = '<a href="#" mce_href="#" onclick="getEdit(\''	+ row.uuid + '\')">编辑</a> ';
//					var d = '<a href="#" mce_href="#" onclick="del(\''	+ row.uuid + '\')">删除</a> ';
					var f = '<button class="btn btn-default" id="showDetail">详情</button> ';
					
					return f;
				},
				
			},

		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});

});





// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#kejiju_chengguo_table_datagrid').bootstrapTable('resetView');
});

// 成果类型下拉框加载
function findResultTypeSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.cglx,text:value.cglx});
	});
	
	$('#search_kejiju_chengguo_resultType').select2({
	    placeholder: "成果类型",
	    tags: true,
	    data:data
	});
	//种子下拉点击事件
	$('#search_kejiju_chengguo_resultType').on('select2:select', function (evt) {
		search_kejiju_chengguo_resultType = evt.params.data.id;
		$('#kejiju_chengguo_table_datagrid').bootstrapTable('refresh');
		
	});
}



//成果时间下拉框加载
function findCompletedDateSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	});
	
	//种子下拉
	$('#search_kejiju_chengguo_completedDate').select2({
	    placeholder: "时间",
	    tags: true,
	    data:data
	});
	
	//种子下拉点击事件
	$('#search_kejiju_chengguo_completedDate').on('select2:select', function (evt) {
		search_kejiju_chengguo_completedDate = evt.params.data.id;
		$('#kejiju_chengguo_table_datagrid').bootstrapTable('refresh');
		
	});
}



function addkejiju_chengguo_tableSuccess(result){
	$('#kejiju_chengguo_table_datagrid').bootstrapTable('refresh');
}