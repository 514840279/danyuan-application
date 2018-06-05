
$(function() {
	//新加字段
	$('#addnew_column').click(function() {
//		loadPage('/pages/dbm/table/add_column.html','add_column_tab_id','新加字段');
		var param={
				tableUuid:$('#db_upd_table_uuid').text()
		}
		loadPage('/sysColumnInfo/updBefor','add_column_tab_id','新加字段',param)
	});
	// 编辑字段
	$('#editold_column').click(function() {
		var data = $('#db_colum_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 1){
			alert("只能选择一条");
		}else{
			var param=data[0];
			// 由于日期转化错误 所以删除属性
			param.createTime=undefined;
			param.updateTime=undefined;
			loadPage('/sysColumnInfo/updBefor','add_column_tab_id','修改字段',param,'reload')
		}
	});
	// 删除字段
	$('#drop_column').click(function() {
		var data = $('#db_colum_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var param = {
								"list":data,
						};
						// 重载
						var url = "/sysColumnInfo/deleteSysColumnInfo";
						ajaxPost(url, param, successDeleteSysColumnInfo, 1000, findError);
					}
				}
			});
		}
	});

	// bootstrap table 表列表
	$('#db_colum_datagrid').bootstrapTable({
		url : "/sysColumnInfo/findAll",
		dataType : "json",
		toolbar : '#db_column_toolbar', // 工具按钮用哪个容器
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
		sidePagination: "server", // 服务端处理分页 server
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
                 uuid:$('#db_upd_table_uuid').text(),
             }; 
             return param;
		},
		columns : [
			{title : '全选',	checkbox : true,align : 'center',valign : 'middle'},
//			{title : 'id',	field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
			{title : '字段名',field : 'colsName',sortable : true,align : 'center'},
			{title : '翻译',field : 'colsDesc',sortable : true,align : 'center'},
			{title : '长度',field : 'colsLength',align : 'center',sortable : true,valign : 'middle'},
			{title : '显示顺序',field : 'colsOrder',align : 'center',sortable : true,valign : 'middle'},
			{title : '字段类型',field : 'colsType',align : 'center',sortable : true,valign : 'middle'},
			{title : '描述',field : 'discription',sortable : true,align : 'left'},
			{title : '对齐方式',field : 'colsAlign',sortable : true,align : 'left'},
			{title : '对齐方式',field : 'colsValign',sortable : true,align : 'left'},
			{title : '列的宽度',field : 'colsWidth',sortable : true,align : 'left'},
			{title : '列显示',field : 'colsVisible',sortable : true,align : 'left'},
			{title : '列选项卡显示',field : 'colsSwitchable',sortable : true,align : 'left'},
			{title : '索引列',field : 'colsIndex',sortable : true,align : 'left'},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
        onLoadSuccess: function(){  //加载成功时执行  
	    },  
	    onLoadError: function(){  //加载失败时执行  
	    } 
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#db_colum_datagrid').bootstrapTable('resetView');
	});
	

});

// 创建表成功
function successSaveSysTableInfo(result){
	$("#tabContainer").data("tabs").remove('add_table_tab_id');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('4c87ffe1-6447-11e7-a272-0025d3a93601');
	$("#db_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history,'add_table_tab_id');
}

// 删除表
function successDeleteSysColumnInfo(result){
	$("#db_colum_datagrid").bootstrapTable('refresh');
}


