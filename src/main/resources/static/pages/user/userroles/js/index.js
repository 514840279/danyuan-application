$(function() {
	$('#addnew').click(function() {
//		window.location.href = "add.html";
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
	$('#admin_userRoles_datagrid').bootstrapTable({
		url : "/sysUserRoles/sysUserRolesList",
		dataType : "json",
		toolbar : '#userRoles_toolbar', // 工具按钮用哪个容器
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
		// sidePagination: "server", // 服务端处理分页
		columns : [{
			title : '全选',
			checkbox : true,
			align : 'center',
			valign : 'middle'
		},
		{
			title : 'id',
			field : 'uuid',
			align : 'center',
			sortable : true,
			valign : 'middle'
		},
		{
			title : '用户名称',
			field : 'userId',
			sortable : true,
			align : 'center'
		},
		{
			title : '角色名称',
			field : 'rolesId',
			align : 'center',
			sortable : true,
			valign : 'middle',
		},
		{
			title : '记录时间',
			field : 'createTime',
			align : 'center',
			sortable : true,
			valign : 'middle'
		},
		{
			title : '更新时间',
			field : 'updateTime',
			sortable : true,
			align : 'center'
		},
		{
			title : '标记',
			field : 'flag',
			sortable : true,
			align : 'center'
		}]
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#admin_userRoles_datagrid').bootstrapTable('resetView');
	});

});