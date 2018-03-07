window.actionEventsxueshupingshen = {
	'click #kejiju_renyuan_xueshupingshen_showDetail': function(e, value, row, index) {  
		data ={
			"uuid":row.uuid
		};
      //修改操作
		loadPage('/kjryXspsInfo/showDetail','kejirenyuan_xueshupingshen_showDetail','学术评审详细信息',data,'reload');
    }
}
$(function() {

	// 添加项目页面跳转
	$('#addnew_kejiju_renyuan_xueshupingshen').click(function() {
		loadPage('/kjryXspsInfo/upd','renyuan_pingshen_add','添加评审',{"personId":personId},'reload');
	});
	
	// 修改项目页面跳转
	$('#editold_kejiju_renyuan_xueshupingshen').click(function() {
		var data = $('#kejiju_renyuan_xueshupingshen_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			var datetemp = {
				"uuid":data[0].uuid,
				"personId":personId
			}
			console.log(datetemp)
			loadPage('/kjryXspsInfo/upd','renyuan_pingshen_add','修改评审',datetemp,'reload');
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_kejiju_renyuan_xueshupingshen').click(function() {
		var data = $('#kejiju_renyuan_xueshupingshen_table_datagrid').bootstrapTable('getAllSelections');
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
						var url = "/kjryXspsInfo/delete";
						var param={list:data};
						ajaxPost(url, param, add_kejiju_renyuan_xueshupingshen_Success, 5000, findError);
					}
				}
			});
		}
		
	});
	
	
	
	// bootstrap table
	$('#kejiju_renyuan_xueshupingshen_table_datagrid').bootstrapTable({
		url : "/kjryXspsInfo/list",
		dataType : "json",
		toolbar : '#kejiju_renyuan_xueshupingshen_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
//		pagination : true, // 分页
//		pageNumber : 1, // 初始化加载第一页，默认第一页
//		pageSize : 10, // 每页的记录行数（*）
//		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
//		strictSearch : true,
		showColumns : true, // 是否显示所有的列
		showRefresh : true, // 是否显示刷新按钮
//		showFooter:false,
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
//		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
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
		sidePagination: "client", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
//        queryParamsType : "undefined",
//        contentType: "application/x-www-form-urlencoded",
//		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) { 
		    var param = {  
	    		personId:personId 
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '评审委托机构',field : 'consignor',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '评审内容',field : 'reviewContent',sortable : true,align : 'center',valign : 'middle'},
			{title : '起始时间',field : 'startTime',sortable : true,align : 'center',valign : 'middle'},
			{title : '结束时间',field : 'endTime',sortable : true,align : 'center',valign : 'middle'},
			{title : '详情',align : 'center',valign : 'middle',
				events: actionEventsxueshupingshen,
				formatter : function(value, row, index) {
//					var e = '<a href="#" mce_href="#" onclick="getEdit(\''	+ row.uuid + '\')">编辑</a> ';
//					var d = '<a href="#" mce_href="#" onclick="del(\''	+ row.uuid + '\')">删除</a> ';
					var f = '<button class="btn btn-default" id="kejiju_renyuan_xueshupingshen_showDetail">详情</button> ';
					return f;
				}
			},

		],
	});
});

function add_kejiju_renyuan_xueshupingshen_Success(result){
	$('#kejiju_renyuan_xueshupingshen_table_datagrid').bootstrapTable('refresh');
}