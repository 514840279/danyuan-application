$(function() {
	// 初始化
	init();
});

// 初始化
function init() {
	// 弹出编辑窗口
	$('#addnew_share_file_sysShareFilePathInfo').click(function() {
		$("#share_file_sysShareFilePathInfo_uuid").val("");
		$("#share_file_sysShareFilePathInfo_deleteFlag").val("");
		$("#share_file_sysShareFilePathInfo_discription").val("");
		$("#share_file_sysShareFilePathInfo_sha512").val("");
		$("#share_file_sysShareFilePathInfo_fileSize").val("");
		$("#share_file_sysShareFilePathInfo_createUser").val("");
		$("#share_file_sysShareFilePathInfo_updataUser").val("");
		$("#share_file_sysShareFilePathInfo_createTime").val("");
		$("#share_file_sysShareFilePathInfo_md5").val("");
		$("#share_file_sysShareFilePathInfo_password").val("");
		$("#share_file_sysShareFilePathInfo_fileName").val("");
		$("#share_file_sysShareFilePathInfo_discription").val("");
		$("#share_file_sysShareFilePathInfo_updataTime").val("");
		$("#share_file_sysShareFilePathInfo_sha256").val("");
		$("#share_file_sysShareFilePathInfo_uuid").val("");
		$("#share_file_sysShareFilePathInfo_pathType").val("");
		$("#share_file_sysShareFilePathInfo_path").val("");
		$("#share_file_sysShareFilePathInfo_deleteFlag").val("");
		$("#share_file_sysShareFilePathInfo_sha1").val("");
		$("#share_file_sysShareFilePathInfo_shareUuid").val("");
		$('#share_file_sysShareFilePathInfo_modal').modal({
			show:true,
		});
	});
	// 反填数据并弹出编辑窗口
	$('#editold_share_file_sysShareFilePathInfo').click(function() {
		var data = $('#share_file_sysShareFilePathInfo_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0||data.length >1){
			alert("必须选中一条数据");
		}else if(data.length > 0){
			$("#share_file_sysShareFilePathInfo_uuid").val(data[0].uuid);
			$("#share_file_sysShareFilePathInfo_deleteFlag").val(data[0].deleteFlag);
			$("#share_file_sysShareFilePathInfo_discription").val(data[0].discription);
			$("#share_file_sysShareFilePathInfo_sha512").val(data[0].sha512);
			$("#share_file_sysShareFilePathInfo_fileSize").val(data[0].fileSize);
			$("#share_file_sysShareFilePathInfo_createUser").val(data[0].createUser);
			$("#share_file_sysShareFilePathInfo_updataUser").val(data[0].updataUser);
			$("#share_file_sysShareFilePathInfo_createTime").val(data[0].createTime);
			$("#share_file_sysShareFilePathInfo_md5").val(data[0].md5);
			$("#share_file_sysShareFilePathInfo_password").val(data[0].password);
			$("#share_file_sysShareFilePathInfo_fileName").val(data[0].fileName);
			$("#share_file_sysShareFilePathInfo_discription").val(data[0].discription);
			$("#share_file_sysShareFilePathInfo_updataTime").val(data[0].updataTime);
			$("#share_file_sysShareFilePathInfo_sha256").val(data[0].sha256);
			$("#share_file_sysShareFilePathInfo_uuid").val(data[0].uuid);
			$("#share_file_sysShareFilePathInfo_pathType").val(data[0].pathType);
			$("#share_file_sysShareFilePathInfo_path").val(data[0].path);
			$("#share_file_sysShareFilePathInfo_deleteFlag").val(data[0].deleteFlag);
			$("#share_file_sysShareFilePathInfo_sha1").val(data[0].sha1);
			$("#share_file_sysShareFilePathInfo_shareUuid").val(data[0].shareUuid);
			
			// 模态框
			$('#share_file_sysShareFilePathInfo_modal').modal({
				show:true,
			});
		}
	});
	// 删除记录
	$('#deleteold_share_file_sysShareFilePathInfo').click(function() {
		var data = $('#share_file_sysShareFilePathInfo_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length>0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要导出代码",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysShareFilePathInfo/deleteAll";
						var param={list:data};
						ajaxPost(url, param, refresh);
					}
				}
			});
			
		}
	});
	
	// 更新数据
	$('#share_file_sysShareFilePathInfo_save_button').click(function() {
		
		var url = "/sysShareFilePathInfo/save";
		var	info={
			uuid:$("#share_file_sysShareFilePathInfo_uuid").val(),
			sha512:$("#share_file_sysShareFilePathInfo_sha512").val(),
			fileSize:$("#share_file_sysShareFilePathInfo_fileSize").val(),
			createUser:$("#share_file_sysShareFilePathInfo_createUser").val(),
			updataUser:$("#share_file_sysShareFilePathInfo_updataUser").val(),
			createTime:$("#share_file_sysShareFilePathInfo_createTime").val(),
			md5:$("#share_file_sysShareFilePathInfo_md5").val(),
			password:$("#share_file_sysShareFilePathInfo_password").val(),
			fileName:$("#share_file_sysShareFilePathInfo_fileName").val(),
			discription:$("#share_file_sysShareFilePathInfo_discription").val(),
			updataTime:$("#share_file_sysShareFilePathInfo_updataTime").val(),
			sha256:$("#share_file_sysShareFilePathInfo_sha256").val(),
			uuid:$("#share_file_sysShareFilePathInfo_uuid").val(),
			pathType:$("#share_file_sysShareFilePathInfo_pathType").val(),
			path:$("#share_file_sysShareFilePathInfo_path").val(),
			deleteFlag:$("#share_file_sysShareFilePathInfo_deleteFlag").val(),
			sha1:$("#share_file_sysShareFilePathInfo_sha1").val(),
			shareUuid:$("#share_file_sysShareFilePathInfo_shareUuid").val(),
			deleteFlag:$("#share_file_sysShareFilePathInfo_deleteFlag").val(),
			discription:$("#share_file_sysShareFilePathInfo_discription").val(),
			createUser:username,
			updateUser:username,
		};
		ajaxPost(url, info, refresh );
		$('#share_file_sysShareFilePathInfo_modal').modal("hide");
	});

	// bootstrap table 初始化
	$('#share_file_sysShareFilePathInfo_datagrid').bootstrapTable({
		url : "/sysShareFilePathInfo/page",
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
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
		search : true, // 显示搜索框
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
				sortName:params.sortName,
				filter:params.filter,
				info:{
					md5: $("#search_share_file_sysShareFilePathInfo_md5").val()==""?null:$("#search_share_file_sysShareFilePathInfo_md5").val(),
				}
			}; 
			return param;
		},
		columns : [ 
			{title : '全选',	checkbox : true,align : 'center',valign : 'middle'}, 
			{title : 'id',field : 'uuid',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : 'sha512',	field : 'sha512','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '大小',	field : 'fileSize','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '插入人',	field : 'createUser','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '更新人',	field : 'updataUser','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '插入时间',	field : 'createTime','width':150,align : 'right',sortable : true,valign : 'middle',switchable:true},
			{title : 'md5',	field : 'md5','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '网盘密码',	field : 'password','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '文件名',	field : 'fileName','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '描述',	field : 'discription','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '更新时间',	field : 'updataTime','width':150,align : 'right',sortable : true,valign : 'middle',switchable:true},
			{title : 'sha256',	field : 'sha256','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '唯一主键',	field : 'uuid','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '类别',	field : 'pathType','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '路径',	field : 'path','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '标记',	field : 'deleteFlag','width':150,align : 'right',sortable : true,valign : 'middle',switchable:true},
			{title : 'sha1',	field : 'sha1','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '关联主键',	field : 'shareUuid','width':150,align : 'left',sortable : true,valign : 'middle',switchable:true},
			{title : '项目描述',	field : 'discription',align : 'left',sortable : true,	valign : 'middle',switchable:true,visible:false},
			{title : '创建时间',	field : 'createTime',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '创建者',	field : 'createUser',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '更新时间',	field : 'updateTime',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '更新者',	field : 'updateTime',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false},
			{title : '标记',		field : 'deleteFlag',align : 'left',sortable : true,valign : 'middle',switchable:true,visible:false}
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.data.content,total:result.data.totalElements}; // 绑定数据 
		},
		contextMenu: '#context-menu', // 右键菜单绑定
		onContextMenuItem: function(row,$ele){ // 右键菜单事件
		}
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) { // 行双击事件 
	}).on('click-row.bs.table', function (e, row, ele,field) { // 行单击事件
	});
}
// 表格重载 事件
function refresh(){
	$('#share_file_sysShareFilePathInfo_datagrid').bootstrapTable('refresh');
}

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#share_file_sysShareFilePathInfo_datagrid').bootstrapTable('resetView');
});


