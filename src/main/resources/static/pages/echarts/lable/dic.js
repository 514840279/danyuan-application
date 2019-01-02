
$(function() {
	// config table
	configTable();
	// 新加模型
	$('#addnew_lable').bind('click',function(){
		var data = $('#plant_addr_datagrid').bootstrapTable('getAllSelections');
		if(data.length >= 1){
			// 弹窗设置
			modals.openWin({
		    	winId:"add_lable",
		    	title:'修改标签',
		    	width:'1500px',
		    	url:"/sysPlantLableDic/addBefor"
		    });
			
		}else{
			alert("请先选择一个维度！");
		}
		
	})
	
	$('#deleteold_lable').click(function(){
		var data = $('#plant_addr_dic_datagrid').bootstrapTable('getAllSelections');
		if(data.length >= 1){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var submiturl = "/sysPlantLableDic/deleteAll";
						ajaxPost(submiturl, {list:data}, addSuccess);
					}
				}
			});
			
		}
	});

});
function addSuccess(result){
	$("#plant_addr_dic_datagrid").bootstrapTable('refresh')
}
function configTable(){

	// bootstrap table
	$('#plant_addr_datagrid').bootstrapTable({
		url : "/sysPlantLableConf/page",
		dataType : "json",
		toolbar : '#dbm_config_table_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
//		pagination : true, // 分页
//		pageNumber : 1, // 初始化加载第一页，默认第一页
//		pageSize : 10, // 每页的记录行数（*）
//		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
		strictSearch : true,
//		showColumns : true, // 是否显示所有的列
//		showRefresh : true, // 是否显示刷新按钮
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
//		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
//		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
//		cardView : false, // 是否显示详细视图
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
		singleSelect : true,
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: 1,    
                 pageSize: 100,
                 sortOrder:params.sortOrder,
                 sortName:params.sortName,
                 username:username,
             }; 
             return param;
		},
		columns : [
			{title : '全选',field : 'checked',checkbox : true,align : 'center',valign : 'middle'},
			{title : '维度名称',field : 'name',sortable : true,align : 'left'},
//			{title : '维度排序',field : 'lableOrder',sortable : true,align : 'left' },
//			{title : '状态',align : 'left',formatter:showbuttonformatter },
//			{title : '添加时间',field : 'createTime',sortable : true,align : 'left',formatter:dateTimeFormatter },
//			{title : '添加人',field : 'createUser',sortable : true,align : 'left'},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
		onClickRow:function(row,index){
			$("#plant_addr_dic_datagrid").bootstrapTable("destroy");
		    if(!index[0].children[0].children[0].checked){
		    	InitSubRoleTable(row);
		    }
	    },
//	    onCheck: function (row) {
//	    	$("#plant_addr_dic_datagrid").bootstrapTable("destroy");
//	    		InitSubRoleTable(row);
//	    },onUncheck: function (row) {
//	    	$("#plant_addr_dic_datagrid").bootstrapTable("destroy");
//	    },
	});
}

window.operateEvents = {
	// 修改
    'click #clickA ': function (e, value, row, index) {
    	// 弹窗设置
		modals.openWin({
	    	winId:"add_lable",
	    	title:'修改标签',
	    	width:'1500px',
	    	url:"/sysPlantLableDic/addBefor?uuid="+row.uuid
	    });
	}
}
function InitSubRoleTable(row){
	$("#plant_addr_dic_datagrid").bootstrapTable({  
		class: 'table table-hover table-bordered',
        url:'/sysPlantLableDic/findAll',  
        dataType : "json",
		toolbar : '#plant_addr_dic_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
//		pagination : true, // 分页
//		pageNumber : 1, // 初始化加载第一页，默认第一页
//		pageSize : 10, // 每页的记录行数（*）
//		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
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
		sidePagination: "client", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
	    treeView: true,//是否开启树视图
	    treeId: "uuid",//id字段
	    treeField: "word",//展示树的字段
		queryParams: function queryParams(params) {  
//		    var param = { 
//		    		pageNumber:params.pageNumber, pageSize:params.pageSize,
//		    		info:{typeUuid:row.uuid}
//             }; 
			var param = { 
		    	typeUuid:row.uuid
             };
             return param;
		},
		columns : [
			{title : 'checked',field : 'checked',checkbox : true,align : 'center',valign : 'middle'	},
			{title : 'uuid',field : 'uuid',	align : 'left',sortable : true,valign : 'middle',visible:false},
//			{title : '部门名称',field : 'departmentId',sortable : true,align : 'center'},
			{title : '显示数据',field : 'word',sortable : true,align : 'left',width:200},
			{title : '排序',field : 'keyOrder',sortable : true,align : 'left',sortable:true,width:50},
			{title : '描述',field : 'description',sortable : true,align : 'left',width:500},
			{title : 'parentId',field : 'parentId',	align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '记录时间',field : 'createTime',align : 'center',	sortable : true,valign : 'middle',visible:false,formatter:dateTimeFormatter},
			{title : '更新时间',field : 'updateTime',sortable : true,align : 'center',visible:false,formatter:dateTimeFormatter},
			{title : '操作',	field : '',sortable : true, events: operateEvents,formatter:optionFormatter ,width:240}
		],
//        responseHandler: function(result){  // 成功时执行
//			return {rows:result.content,total:result.totalElements};
//		}, 
        onLoadSuccess: function(){  //加载成功时执行  
	    },  
	    onLoadError: function(){  //加载失败时执行  
	    },
});
}

function optionFormatter(e,row,index){
	return  "<i  type='button' id='clickA'  class=' btn btn-default fa fa-edit' title='编辑' ></i> " ;
}

function showbuttonformatter(e,row,index){
	if(row.deleteFlag==1){
		return '启用';
	}else{
		return '禁用';
	}
	
}

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_addr_datagrid').bootstrapTable('resetView');
});
