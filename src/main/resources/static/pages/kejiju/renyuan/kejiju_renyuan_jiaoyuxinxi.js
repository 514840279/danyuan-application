window.actionEventsjiaoyu = {
	'click #kejirenyuan_jiaoyu_showDetail': function(e, value, row, index) {  
		data ={
			"uuid":row.uuid
		};
      //修改操作
		loadPage('/kjryJyxxInfo/showDetail','keji_renyuan_jiaoyu_showDetail','教育详细信息',data,'reload');
    }
}
$(function() {

	// 添加项目页面跳转
	$('#addnew_kejiju_renyuan_jiaoyuxinxi').click(function() {
		loadPage('/kjryJyxxInfo/upd','keji_renyuan_jiaoyu_add','添加教育',{"personId":personId},'reload');
	});
	
	// 修改项目页面跳转
	$('#editold_kejiju_renyuan_jiaoyuxinxi').click(function() {
		var data = $('#kejiju_renyuan_jiaoyuxinxi_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			var datetemp = {
				"uuid":data[0].uuid,
				"personId":personId
			}
			console.log(datetemp)
			loadPage('/kjryJyxxInfo/upd','keji_renyuan_jiaoyu_add','修改教育',datetemp,'reload');
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_kejiju_renyuan_jiaoyuxinxi').click(function() {
		var data = $('#kejiju_renyuan_jiaoyuxinxi_table_datagrid').bootstrapTable('getAllSelections');
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
						var url = "/kjryJyxxInfo/delete";
						var param={list:data};
						ajaxPost(url, param, addkejiju_renyuan_jiaoyuxinxiSuccess, 5000, findError);
					}
				}
			});
		}
		
	});
	
	
	
	// bootstrap table
	$('#kejiju_renyuan_jiaoyuxinxi_table_datagrid').bootstrapTable({
		url : "/kjryJyxxInfo/list",
		dataType : "json",
		toolbar : '#kejiju_renyuan_jiaoyuxinxi_toolbar', // 工具按钮用哪个容器
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
			{title : '国家',field : 'country',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '学位',field : 'degree',sortable : true,align : 'center',valign : 'middle'},
			{title : '学历',field : 'education',sortable : true,align : 'center',valign : 'middle'},
			{title : '专业',field : 'major',sortable : true,align : 'center',valign : 'middle'},
			{title : '院校名称',field : 'schoolName',sortable : true,align : 'center',valign : 'middle'},
			{title : '指导教师',field : 'teacher',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '培训进修',field : 'training',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '院校组织机构代码',field : 'universityCode',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '院校统一社会信用代码',field : 'universityUscc',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '起始时间',field : 'startTime',sortable : true,align : 'center',valign : 'middle'},
			{title : '结束时间',field : 'endTime',sortable : true,align : 'center',valign : 'middle'},
			{title : '详情',align : 'center',valign : 'middle',
				events: actionEventsjiaoyu,
				formatter : function(value, row, index) {
//					var e = '<a href="#" mce_href="#" onclick="getEdit(\''	+ row.uuid + '\')">编辑</a> ';
//					var d = '<a href="#" mce_href="#" onclick="del(\''	+ row.uuid + '\')">删除</a> ';
					var f = '<button class="btn btn-default" id="kejirenyuan_jiaoyu_showDetail">详情</button> ';
					return f;
				}
			},

		],
	});
});

function addkejiju_renyuan_jiaoyuxinxiSuccess(result){
	$('#kejiju_renyuan_jiaoyuxinxi_table_datagrid').bootstrapTable('refresh');
}