$(function() {
	// 绑定 启动 添加模态框 事件
	$('#addnew').click(function() {
		// 模态框
		$('#admin_organization_add_modal').modal();
	});
	// 绑定 批量删除事件
	$('#deleteold').click(function() {
		deleteold();
	});
	// 绑定 添加事件
	$('#add_button').click(function() {
		add();
	});
	// 绑定 编辑 事件
	$('#edit_button').click(function() {
		edit();
	});
	
	// easyui data-graid
	// $("#admin_menu_datagrid").datagrid({
	// url : "/sysmenu/sysMenuList",// 加载的URL
	// isField : "uuid",
	// pagination : true,// 显示分页
	// pageSize : 5,// 分页大小
	// pageList : [ 5, 10, 15, 20 ],// 每页的个数
	// fit : true,// 自动补全
	// fitColumns : true,
	// iconCls : "icon-save",// 图标
	// title : "用户管理",
	// columns : [ [ // 每个列具体内容
	// {
	// field : 'uuid',
	// title : 'uuid',
	// width : 100
	//
	// }, {
	// field : 'parentsId',
	// title : 'parentsId',
	// width : 100
	// }, {
	// field : 'menuName',
	// title : 'menuName',
	// width : 100
	// } ] ]
	// //
	// {"uuid":"q","parentsId":"q","menuName":"q","uri":"q","discription":"q","classType":"q","insertDatetime":"2016-06-13","updataDatatime":"2016-06-13","flag":"q"}
	// });

	// bootstrap table
	$('#admin_organization_datagrid').bootstrapTable({
		url : "/sysOrganization/sysOrganizationList",
		dataType : "json",
		toolbar : '#toolbar', // 工具按钮用哪个容器
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
		showExport : true, // 是否显示导出
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
		height : 600, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		singleSelect : false,
		exportDataType : "all", // basic', 'all', 'selected'.
		locales : "zh-CN", // 表格汉化
		search : true, // 显示搜索框
		refresh : true,
		striped : true, // 是否显示行间隔色
		// sidePagination: "server", // 服务端处理分页
		columns : [{
			title : '全选',
			checkbox : true,
			align : 'center',
			valign : 'middle'
		}
// ,{
// title : 'uuid',
// field : 'uuid',
// align : 'center',
// sortable : true,
// valign : 'middle'
// }
		,{
			title : '机构代码',
			field : 'organizationCode',
			align : 'center',
			sortable : true,
			valign : 'middle'
		}
		,{
			title : '机构名称',
			field : 'organizationName',
			align : 'center',
			sortable : true,
			valign : 'middle'
		},
		{
			title : '机构描述',
			field : 'organizationDiscription',
			sortable : true,
			align : 'center'
		},
		{
			title : '录入时间',
			field : 'insertDatetime',
			sortable : true,
			align : 'center',
			formatter: dateTimeFormatter
		},
		{
			title : '更新时间',
			field : 'updataDatatime',
			sortable : true,
			align : 'center'
		},
		{
			title : '状态',
			field : 'flag',
			sortable : true,
			align : 'center',
			formatter: stateFormatter
		},
		{
			title : '操作',
			field : 'uuid',
			align : 'center',
			formatter : function(value, row, index) {
				var e = '<a href="#" mce_href="#" onclick="getEdit(\''	+ row.uuid + '\')">编辑</a> ';
				var d = '<a href="#" mce_href="#" onclick="del(\''	+ row.uuid + '\')">删除</a> ';
				return e + d;
			}
		} ]
	});

});

// ----------------------------添加 ---------------------------------

// 添加数据
function add(){
	var code = $('#add_organizationCode').val();
	var name = $('#add_organizationName').val();
	var disc = $('#add_organizationDiscription').val();
	var flag = $('#add_flag:checked').val();
	var info={
			organizationCode:code,
			organizationName:name,
			organizationDiscription:disc,
			flag:flag
	};
	var submiturl = "/sysOrganization/sysOrganizationAdd";
	ajaxPost(submiturl, info, success, 5000, error);
};


// ----------------------- 单一查询 -------------------------------------

// 获取编辑数据
function getEdit(uuid){
	var info={
			uuid:uuid
	};
	var submiturl = "/sysOrganization/findSysOrganization";
	ajaxPost(submiturl, info, getEditsuccess, 5000, error);
};

// 编辑模态框启动编辑
function getEditsuccess(result){
	var orgaization = result;
	if(orgaization.flag=="1"){
		$('#edit_flag[value="0"]').attr('checked',false);
		$('#edit_flag[value="1"]').attr('checked',true);
	}else if(orgaization.flag=="0"){
		$('#edit_flag[value="0"]').attr('checked',true);
		$('#edit_flag[value="1"]').attr('checked',false);
	}
	$('#edit_uuid').text(orgaization.uuid);
	$('#edit_organizationCode').val(orgaization.organizationCode);
	$('#edit_organizationName').val(orgaization.organizationName);
	$('#edit_organizationDiscription').val(orgaization.organizationDiscription);
	$('#edit_insertDatetime').text(dateTimeFormatter(orgaization.insertDatetime,0,0));
	$('#edit_updataDatatime').text(orgaization.updataDatatime==null?'-':dateTimeFormatter(orgaization.updataDatatime,0,0));
	
	$('#admin_organization_edit_modal').modal();
};

// ------------------- 修改 -------------------------------------

// 编辑
function edit(){
	var uid  = $('#edit_uuid').text();
	var code = $('#edit_organizationCode').val();
	var name = $('#edit_organizationName').val();
	var disc = $('#edit_organizationDiscription').val();
	var flag = $('#edit_flag:checked').val();
	if(flag == undefined){
		alert("请选则状态");
		return;
	};
	var info={
			uuid:uid,	
			organizationCode:code,
			organizationName:name,
			organizationDiscription:disc,
			flag:flag
	};
	var submiturl = "/sysOrganization/sysOrganizationEdit";
	ajaxPost(submiturl, info, success, 5000, error);
};


// -----------------删除 -------------------------------------------------

// 删除
function del(uuid){
	var info={
			uuid:uuid
	};
	var submiturl = "/sysOrganization/sysOrganizationDelete";
	ajaxPost(submiturl, info, success, 5000, error);
};


// 批量删
function deleteold(){
	var temp =$('#admin_organization_datagrid').bootstrapTable('getAllSelections');
	for (var int=0; int<temp.length; int++) {
		del(temp[int].uuid);
	}
};



// --------------- 通用方法  --------------------------------------

//窗口大小改变时 重设表头
$(window).resize(function() {
	$('#admin_organization_datagrid').bootstrapTable('resetView');
});

// 日期 时间的格式化
function dateTimeFormatter(value,row,index){
	return  new Date(parseInt(value)).toLocaleString(); 
};

// 状态的代码转换
function stateFormatter(value,row,index){
	if(value=="1"){
		return "启用";
	}else if(value=="0"){
		return "禁用";
	}
	
};

// success
function success(result){
	if(result=="1"){
		// 添加表单清空
		document.getElementById('admin_organization_add_form').reset();
		// 编辑表单清空
		document.getElementById('admin_organization_edit_form').reset();
		// 隐藏模态框
		$('#admin_organization_add_modal').modal("hide");
		// 隐藏模态框
		$('#admin_organization_edit_modal').modal("hide");
		// 重载table
		$('#admin_organization_datagrid').bootstrapTable('refresh',"/sysOrganization/sysOrganizationList");
		// 模态框提示
		$('#admin_organization_alert_success').modal();
		setTimeout(function(){$("#admin_organization_alert_success").modal("hide")},900);
	}else{
		error();
	}
};

// 调用错误的模态框
function error(){
	alert("出错了")
};



