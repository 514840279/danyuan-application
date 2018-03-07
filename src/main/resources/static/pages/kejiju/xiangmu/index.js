search_kejiju_xiangmu_projectDomain ="";
search_kejiju_xiangmu_projectType ="";
search_kejiju_xiangmu_region="";
search_kejiju_xiangmu_approvalYear="";
//表格  - 操作 - 事件
window.actionEvents2 = {
	'click #kejixiangmu-showDetail': function(e, value, row, index) {  
		data ={
			"uuid":row.uuid
		};
		
      //修改操作
		loadPage('/kjxmJbxxInfo/showDetail','xiangmu_showDetail','项目详细信息',data,'reload');
    }
}
$(function() {
	// 技术领域
	ajaxPost("/kjxmJbxxInfo/dicJsly", null, findProjectDomainSuccess, 5000, findError);
	// 项目类型
	ajaxPost("/kjxmJbxxInfo/dicXmlx", null, findProjectTypeSuccess, 5000, findError);
	// 时间
	ajaxPost("/kjxmJbxxInfo/dicSj", null, findApprovalYearSuccess, 5000, findError);
	// 地区
	ajaxPost("/kjxmJbxxInfo/dicDq", null, findRegionSuccess, 5000, findError);
	
	
	// 添加项目页面跳转
	$('#kejiju_xiangmu_addnew').click(function() {
		loadPage('/kjxmJbxxInfo/upd','xiangmu_add','添加项目',null,'reload');
	});
	
	// 修改项目页面跳转
	$('#kejiju_xiangmu_editold').click(function() {
		var data = $('#kejiju_xiangmu_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			var datetemp = {
				uuid:data[0].uuid
			}
			loadPage('/kjxmJbxxInfo/upd','xiangmu_add','修改项目',datetemp,'reload');
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#kejiju_xiangmu_deleteold').click(function() {
		var data = $('#kejiju_xiangmu_table_datagrid').bootstrapTable('getAllSelections');
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
						var url = "/kjxmJbxxInfo/delete";
						var param={list:data};
						ajaxPost(url, param, addkejiju_xiamgmu_jbxxSuccess, 5000, findError);
					}
				}
			});
		}
		
	});
	
	$('#kejiju_xiangmu_config').click(function() {
		var data = $('#kejiju_xiangmu_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			var datetemp = {
				uuid:data[0].uuid
			}
			loadPage('/kjxmJbxxInfo/updDatile','xiangmu_jbxx_datile_upd','详细修改',datetemp,'reload');
		}else{
			alert("只能选中一条数据");
		}
	});
	
	


	// bootstrap table
	$('#kejiju_xiangmu_table_datagrid').bootstrapTable({
		url : "/kjxmJbxxInfo/page",
		dataType : "json",
		toolbar : '#kejiju_xiangmu_toolbar', // 工具按钮用哪个容器
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
        contentType: "application/x-www-form-urlencoded",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) { 
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 username:username,
                 projectName:$("#search_kejiju_xiangmu_projectName").val(),
                 projectDomain:search_kejiju_xiangmu_projectDomain,
                 projectType:search_kejiju_xiangmu_projectType,
                 region:search_kejiju_xiangmu_region,
                 approvalYear:search_kejiju_xiangmu_approvalYear
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '唯一标识',field : 'uuid',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '省市地区',field : 'region',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '科技计划编码',field : 'planId',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '科技计划名称',field : 'planName',align : 'center',sortable : true,valign : 'middle'},
			{title : '科技计划指南描述',field : 'planAbstract',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '科技计划指南链接地址',field : 'planUrl',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '项目类别',field : 'projectType',align : 'center',sortable : true,valign : 'middle'},
			{title : '项目编码',field : 'projectId',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '项目名称',field : 'projectName',align : 'center',sortable : true,valign : 'middle'},
			{title : '项目主管部门',field : 'competentDepartment',sortable : true,align : 'center',valign : 'middle'},
			{title : '项目领域编码',field : 'projectDomainId',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '项目领域名称',field : 'projectDomain',align : 'center',sortable : true,valign : 'middle'},
			{title : '立项年度',field : 'approvalYear',align : 'center',sortable : true,valign : 'middle'},
			{title : '项目计划起始时间',field : 'projectPlanStartTime',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '项目实际起始时间',field : 'projectActualStartTime',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '项目计划结束时间',field : 'projectPlanEndtime',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '项目实际结束时间',field : 'projectActualEndtime',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '项目执行阶段',field : 'projectPhase',align : 'center',sortable : true,valign : 'middle'},
			{title : '研究目标',field : 'researchTarget',align : 'center',sortable : true,valign : 'middle'},
			{title : '主要研究内容',field : 'researchContent',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '项目简介',field : 'projectAbstract',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '预期成果指标',field : 'expectedIndex',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '中图分类号',field : 'cdc',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '学科分类代码',field : 'discipline',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '行业分类代码',field : 'industry',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '其他分类代码',field : 'otherCode',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '中文关键词',field : 'cnKeyword',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '英文关键词',field : 'enKeyword',sortable : true,align : 'center',valign : 'middle',visible:false,visible:false},
			{title : '项目总经费',field : 'totalFund',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '中央拨付经费',field : 'govemmentFund',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '省级拨付经费',field : 'provincialFund',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '地方配套经费',field : 'localFund',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '单位自筹经费',field : 'selfFund',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '其他来源经费',field : 'otherFund',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '项目相关文档',field : 'porjectLinks',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '联系人姓名',field : 'name',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '联系人电话',field : 'telephone',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '联系人邮箱',field : 'email',align : 'center',sortable : true,valign : 'middle',visible:false},
			
			{title : '详情',align : 'center',
				events: actionEvents2,
				formatter : function(value, row, index) {
//					var e = '<a href="#" mce_href="#" onclick="getEdit(\''	+ row.uuid + '\')">编辑</a> ';
//					var d = '<a href="#" mce_href="#" onclick="del(\''	+ row.uuid + '\')">删除</a> ';
					var f = '<button class="btn btn-default" id="kejixiangmu-showDetail">详情</button> ';
					return f;
				}
			},

		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
	
	$('#search_kejiju_xiangmu_button').click(function() {
		$('#kejiju_xiangmu_table_datagrid').bootstrapTable('refresh');
	});
});

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#kejiju_xiangmu_table_datagrid').bootstrapTable('resetView');
});

// 技术领域下拉框加载
function findProjectDomainSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	});
	
	$('#search_kejiju_xiangmu_projectDomain').select2({
	    placeholder: "科技领域",
	    tags: true,
	    data:data
	});
	//种子下拉点击事件
	$('#search_kejiju_xiangmu_projectDomain').on('select2:select', function (evt) {
		search_kejiju_xiangmu_projectDomain = evt.params.data.id;
		$('#kejiju_xiangmu_table_datagrid').bootstrapTable('refresh');
		
	});
}



// 项目类型下拉框加载
function findProjectTypeSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	});
	
	//种子下拉
	$('#search_kejiju_xiangmu_projectType').select2({
	    placeholder: "时间",
	    tags: true,
	    data:data
	});
	
	//种子下拉点击事件
	$('#search_kejiju_xiangmu_projectType').on('select2:select', function (evt) {
		search_kejiju_xiangmu_projectType = evt.params.data.id;
		$('#kejiju_xiangmu_table_datagrid').bootstrapTable('refresh');
		
	});
}


// 时间下拉框加载
function findApprovalYearSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	});
	
	//种子下拉
	$('#search_kejiju_xiangmu_approvalYear').select2({
	    placeholder: "时间",
	    tags: true,
	    data:data
	});
	
	//种子下拉点击事件
	$('#search_kejiju_xiangmu_approvalYear').on('select2:select', function (evt) {
		search_kejiju_xiangmu_approvalYear = evt.params.data.id;
		$('#kejiju_xiangmu_table_datagrid').bootstrapTable('refresh');
		
	});
}


// 地区下拉框加载
function findRegionSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	});
	
	//种子下拉
	$('#search_kejiju_xiangmu_region').select2({
	    placeholder: "时间",
	    tags: true,
	    data:data
	});
	
	//种子下拉点击事件
	$('#search_kejiju_xiangmu_region').on('select2:select', function (evt) {
		search_kejiju_xiangmu_region = evt.params.data.id;
		$('#kejiju_xiangmu_table_datagrid').bootstrapTable('refresh');
		
	});
}


function addkejiju_xiamgmu_jbxxSuccess(result){
	$('#kejiju_xiangmu_table_datagrid').bootstrapTable('refresh');
}