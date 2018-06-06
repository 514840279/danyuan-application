$(function() {
	$('#addnew_type').click(function() {
		$("#dbm_type_add_uuid").val(getUuid());
		$('#dbm_type_add_modal').modal({
			show:true,
		});
	});
	$('#editold_type').click(function() {
		var data = $('#dbm_type_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			$("#dbm_type_add_uuid").val(data[0].uuid);
			$("#dbm_type_add_typeName").val(data[0].typeName);
			$("#dbm_type_add_typeIcon").val(data[0].typeIcon);
			$("#dbm_type_add_typeOrder").val(data[0].typeOrder);
			$("#dbm_type_add_discription").val(data[0].discription);
			if(data[0].deleteFlag==1){
				$('#dbm_type_add_deleteFlag[value="0"]').attr('checked',false);
				$('#dbm_type_add_deleteFlag[value="1"]').attr('checked',true);
			}else if(data[0].deleteFlag==0){
				$('#dbm_type_add_deleteFlag[value="0"]').attr('checked',true);
				$('#dbm_type_add_deleteFlag[value="1"]').attr('checked',false);
			}
			$("#dbm_type_add_modal").modal({
				show:true,
			})
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_type').click(function() {
		var data = $('#dbm_type_datagrid').bootstrapTable('getAllSelections');
		var url = "/sysDbmsTabsTypeInfo/sysTableTypeDeleteAll";
		var param={list:data};
		ajaxPost(url, param, addSysTableTypeInfoSuccess, 5000, findError);
	});
	
	$('#dbm_type_add_button').click(function() {
		
		var url = "/sysDbmsTabsTypeInfo/save";
		var	sysTableTypeInfo={
			uuid:$("#dbm_type_add_uuid").val(),
			typeName:$("#dbm_type_add_typeName").val(),
			typeIcon:$("#dbm_type_add_typeIcon").val(),
			typeOrder:$("#dbm_type_add_typeOrder").val(),
			discription:$("#dbm_type_add_discription").val(),
			deleteFlag:$('#dbm_type_add_deleteFlag:checked').val(),
		}
		console.log(sysTableTypeInfo);
		ajaxPost(url, sysTableTypeInfo, addSysTableTypeInfoSuccess, 5000, findError);
		$('#dbm_type_add_modal').modal("hide");
	});
	
	

	// bootstrap table
	$('#dbm_type_datagrid').bootstrapTable({
		url : "/sysDbmsTabsTypeInfo/findAllBySearchText",
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
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 sysTableTypeInfo:{
                	 
                 }
             }; 
             return param;
		},

		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle',switchable:false,visible:false},
			{title : '类型名称',field : 'typeName',sortable : true,align : 'center'},
			{title : '类型描述',field : 'discription',align : 'center',sortable : true,valign : 'middle'},
			{title : '类型排序',field : 'typeOrder',align : 'center',sortable : true,valign : 'middle'},
			{title : '记录时间',field : 'createTime',align : 'center',sortable : true,valign : 'middle'},
			{title : '更新时间',field : 'updateTime',sortable : true,align : 'center'},
			{title : '标记',field : 'deleteFlag',sortable : true,align : 'center'}
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});

});
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_type_datagrid').bootstrapTable('resetView');
});





function addSysTableTypeInfoSuccess(result){
	$('#dbm_type_datagrid').bootstrapTable('refresh');
}