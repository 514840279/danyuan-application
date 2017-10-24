function initTable(){
    //先销毁表格  
    $('#crawler_seed_index_datagrid').bootstrapTable('destroy');  
	// bootstrap table
	$('#crawler_seed_index_datagrid').bootstrapTable({
		url : "/sysSeed/sysSeedList",
		dataType : "json",
		toolbar : '#seed_toolbar', // 工具按钮用哪个容器
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
		height : 550, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		singleSelect : false,
		showPaginationSwitch:true,
		locales : "zh-CN", // 表格汉化
		showExport: true,                     //是否显示导出
		exportDataType: "basic",              //basic', 'all', 'selected'.
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
	             }; 
             return param;
		},
//		onlyInfoPagination:true,
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',	field : 'uuid',	align : 'left',sortable : true,valign : 'middle',visible:false},
			{title : '网站类型',field : 'seedType',sortable : true,align : 'left'},
			{title : '网站名称',field : 'seedName',align : 'left',sortable : true,valign : 'middle'	},
			{title : '网站商标',field : 'seedIcon',align : 'center',sortable : true,valign : 'middle' ,formatter:imgshow},
			{title : '链接地址',field : 'seedUrl',	align : 'left',sortable : true,valign : 'middle'},
			{title : '请求时间',field : 'requestDate',	sortable : true,align : 'left'},
			{title : '请求代理',field : 'requestProxy',	sortable : true,align : 'left'},
			{title : '资源功能描述',	field : 'discription',sortable : true,align : 'left'}
		],  
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
        onLoadSuccess: function(){  //加载成功时执行  
	    },  
	    onLoadError: function(){  //加载失败时执行  
	    } 
	});
	
}


$(function() {
	$('#addnew').click(function() {
		loadUpdate("");
	});
	$('#editold').click(function() {
		var data = $('#crawler_seed_index_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 1){
			alert("只能选择一条");
		}else{
			loadUpdate(data[0]);
		}
	});
	
	$('#deleteold').click(function() {
		var data = $('#crawler_seed_index_datagrid').bootstrapTable('getAllSelections');
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
								"pageNumber":1,    
				                "pageSize":20
						};
						// 重载
						var url = "/sysSeed/deleteSysSeedInfo";
						ajaxPost(url, param, successdelete, 1000, findError);
					}
				}
			});
		}
	});
	
	$('#role_manager').click(function() {
		var data = $('#crawler_seed_index_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 0){
			
			$("#role_seed_uuid").text(data[0].uuid);
			$("#role_seed_type").text(data[0].seedType);
			$("#role_seed_name").text(data[0].seedName);
			$("#role_seed_icon").attr("src",data[0].seedIcon);
			$("#role_seed_url").text(data[0].seedUrl);
			$("#role_seed_requesttime").text(data[0].requestDate);
			$("#role_seed_discription").text(data[0].discription);
			$("#role_seed_requestProxy").text(data[0].requestProxy);
			ruler(data[0]);
			
			$("#Modal_ruler").modal({
				show:true,
				
			})
		}
	});
	
	$('#result_manager').click(function() {
		alert("也准备做点什么！");
	});
	initTable();
	//当点击查询按钮的时候执行  
    $("#search").bind("click", initTable);
});
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#crawler_seed_index_datagrid').bootstrapTable('resetView');
});

function imgshow(value,row,index){
	return "<img src='"+value+"'>";
} 

// ========================================================================
// 添加数据
function submit() {
	var param = {
		uuid :$("#add_uuid").val(),
		seedType : $("#add_seedType").val(),
		seedName : $("#add_seedName").val(),
		seedIcon : $("#add_seedIcon").val(),
		seedUrl : $("#add_seedUrl").val(),
		requestDate : $("#add_requestDate").val(),
		requestProxy : $("#add_requestProxy").val(),
		discription : $("#add_discription").val(),
		insertUser : "system",
		deleteFlag : 0,
	}
	var url = "/sysSeed/addSysMenuInfo";
	// 重载
	ajaxPost(url, param, sucessAdd, 1000, findError);
}

function sucessAdd(result) {
	$("#addSeedModal").modal("hide");
	$('#crawler_seed_index_datagrid').bootstrapTable('refresh');
}
//========================================================================
// 修改信息
function loadUpdate(result) {
	if(result!= ""){
		$("#add_uuid").val(result.uuid);
		$("#add_seedType").val(result.seedType);
		$("#add_seedName").val(result.seedName);
		$("#add_seedIcon").val(result.seedIcon);
		$("#add_seedUrl").val(result.seedUrl);
		$("#add_requestDate").val(result.requestDate);
		$("#add_requestProxy").val(result.requestProxy);
		$("#add_discription").val(result.discription);
		$("#add_deleteFlag").val(result.deleteFlag);
	}else{
		$("#add_uuid").val(getUuid());
		$("#add_seedType").val("");
		$("#add_seedName").val("");
		$("#add_seedIcon").val("");
		$("#add_seedUrl").val("");
		$("#add_requestDate").val("");
		$("#add_requestProxy").val("");
		$("#add_discription").val("");
		$("#add_deleteFlag").val("");
	}
	$("#addSeedModal").modal({
		show:true,
	});
}
//========================================================================
// 删除成功后
function successdelete(result){
	$('#crawler_seed_index_datagrid').bootstrapTable('refresh');
}

