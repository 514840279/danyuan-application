var search_table_addrName = null;
var search_table_typeName = null;

$(function() {
	$('#addnew_table').click(function() {
//		loadPage('/pages/dbms/table/add_table.html','add_table_tab_id','新建表')
		
		// 获取屏幕宽度
		url = "/pages/dbms/table/add_table.html";
    	
    	modals.openWin({
	    	winId:"add_tabs_id",
	    	title:'新建连接信息',
	    	width:screen.width*0.5+'px',
	    	url:url
	    });
	});
	$('#impnew_table').click(function() {
		// 获取屏幕宽度
		url = "/pages/dbms/table/imp_table.html";
    	
    	modals.openWin({
	    	winId:"imp_tabs_id",
	    	title:'添加连接信息',
	    	width:screen.width +'px',
	    	url:url
	    });
	});
	
	
	$('#editold_table').click(function() {
		var data = $('#db_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 1){
			alert("只能选择一条");
		}else{
			var uuid =data[0].uuid;
			// 获取屏幕宽度
			url = "/sysDbmsTabsInfo/updBeforEdit?uuid="+uuid;
	    	
	    	modals.openWin({
		    	winId:"upd_tabs_id",
		    	title:'添加连接信息',
		    	width:screen.width*0.5 +'px',
		    	url:url
		    });
//			loadPage('/sysDbmsTabsInfo/updBeforEdit','upd_table_tab_id','修改表',data[0],'reload')
		}
	});
	
	$('#editold_table_column').click(function() {
		var data = $('#db_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 1){
			alert("只能选择一条");
		}else{
			loadPage('/sysDbmsTabsInfo/updBefor','upd_table_column_tab_id','修改表字段',data[0],'reload')
			
		}
	});
	
	
	$('#delete_table').click(function() {
		var data = $('#db_table_datagrid').bootstrapTable('getAllSelections');
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
						var url = "/sysDbmsTabsInfo/delete";
						ajaxPost(url, param, successDeleteSysTableInfo, 1000, findError);
					}
				}
			});
		}
	});
	
	$('#drop_table').click(function() {
		var data = $('#db_table_datagrid').bootstrapTable('getAllSelections');
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
						var url = "/sysDbmsTabsInfo/drop";
						ajaxPost(url, param, successDeleteSysTableInfo, 1000, findError);
					}
				}
			});
		}
	});

	// bootstrap table
	$('#db_table_datagrid').bootstrapTable({
		url : "/sysDbmsTabsInfo/page",
		dataType : "json",
		toolbar : '#db_table_toolbar', // 工具按钮用哪个容器
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
//		search : true, // 显示搜索框
		sidePagination: "server", // 服务端处理分页
		queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 info:{
                	 jdbcUuid:search_table_addrName,
            		 typeUuid:search_table_typeName,
            		 tableName:$("#search_table_tableName").val(),
        			 tableDesc:$("#search_table_tableDesc").val(),
                 }
             }; 
             return param;
		},
		columns : [
			{title : '全选',	checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',	field : 'uuid',	align : 'center',sortable : true,valign : 'middle',visible:false},
//			{title : '数据库',field : 'jdbcUuid',sortable : true,align : 'left'},
//			{title : '类型',field : 'typeUuid',sortable : true,align : 'left'},
			{title : '表名',field : 'tabsName',align : 'left',sortable : true,valign : 'middle'},
			{title : '表含义',field : 'tabsDesc',align : 'left',sortable : true,valign : 'middle'},
			{title : '显示顺序',field : 'tabsOrder',align : 'center',sortable : true,valign : 'middle'},
			{title : '表数据量',field : 'tabsRows',sortable : true,align : 'left'},
			{title : '数据库表大小',field : 'tabsSpace',sortable : true,align : 'left'},
			{title : '描述',field : 'discription',sortable : true,align : 'left'}
		],responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		},
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#db_table_datagrid').bootstrapTable('resetView');
	});
	
	// 数据库列表下拉
	ajaxPost('/sysDbmsTabsJdbcInfo/findAll', null, successSearchDatabaseInfoindex, null, findError);
	// 表类型列表下拉
	ajaxPost('/sysDbmsTabsTypeInfo/findAll', null, successSearchTableTypeInfoindex, null, findError);

});
function successDeleteSysTableInfo(reslut){
	$('#db_table_datagrid').bootstrapTable('refresh');
}

//数据库列表下拉
function successSearchDatabaseInfoindex(result){
	var data =[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text: value.databaseName});
	})
	
	$("#search_table_addrName").select2({
	    tags: true,
	    placeholder: "请选择",
	    data: data
	});
	search_table_addrName = null;
	$('#search_table_addrName').on('select2:select', function (evt) {
		search_table_addrName = evt.params.data.id;
		if(search_table_addrName == "请选择"){
			search_table_addrName = null;
		}
		$('#db_table_datagrid').bootstrapTable('refresh');
	});
}

//表类型列表下拉
function successSearchTableTypeInfoindex(result){
	var data =[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text: value.typeName});
	})
	
	$("#search_table_typeName").select2({
	    tags: true,
	    placeholder: "请选择",
	    data: data
	});
	search_table_typeName = null;
	$('#search_table_typeName').on('select2:select', function (evt) {
		search_table_typeName = evt.params.data.id;
		if(search_table_typeName == "请选择"){
			search_table_typeName = null;
		}
		$('#db_table_datagrid').bootstrapTable('refresh');
	});
}