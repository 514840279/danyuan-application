search_kejiju_renyuan_researchDirection ="";
search_kejiju_renyuan_porfessionalTitle ="";
search_kejiju_renyuan_degree ="";
//表格  - 操作 - 事件
window.actionEvents3 = {
	'click #kejirenyuan-showDetail': function(e, value, row, index) {  
		data ={
				"personId":row.personId
		};
		
      //修改操作
		loadPage('/kjryJbxxInfo/showDetail','xiangmu_showDetail','项目详细信息',data,'reload');
    }
}
$(function() {
	ajaxPost("/kjryJbxxInfo/dicJsly", null, findJslySuccess, 5000, findError);
	
	ajaxPost("/kjryJbxxInfo/dicZc", null, findZcSuccess, 5000, findError);
	
	ajaxPost("/kjryJbxxInfo/dicXw", null, findXwSuccess, 5000, findError);
	
	
//	$('#addnew_type').click(function() {
//		$("#dbm_type_add_uuid").val(getUuid());
//		$('#dbm_type_add_modal').modal({
//			show:true,
//		});
//	});
//	$('#editold_type').click(function() {
//		var data = $('#kejiju_chengguo_table_datagrid').bootstrapTable('getAllSelections');
//		if(data.length == 0){
//			alert("先选中一条数据");
//		}else if(data.length == 1){
//			$("#dbm_type_add_uuid").val(data[0].uuid);
//			$("#dbm_type_add_typeName").val(data[0].typeName);
//			$("#dbm_type_add_typeIcon").val(data[0].typeIcon);
//			$("#dbm_type_add_typeOrder").val(data[0].typeOrder);
//			$("#dbm_type_add_discription").val(data[0].discription);
//			if(data[0].deleteFlag==1){
//				$('#dbm_type_add_deleteFlag[value="0"]').attr('checked',false);
//				$('#dbm_type_add_deleteFlag[value="1"]').attr('checked',true);
//			}else if(data[0].deleteFlag==0){
//				$('#dbm_type_add_deleteFlag[value="0"]').attr('checked',true);
//				$('#dbm_type_add_deleteFlag[value="1"]').attr('checked',false);
//			}
//			$("#dbm_type_add_modal").modal({
//				show:true,
//			})
//		}else{
//			alert("只能选中一条数据");
//		}
//	});
//	$('#deleteold_type').click(function() {
//		var data = $('#kejiju_chengguo_table_datagrid').bootstrapTable('getAllSelections');
//		var url = "/sysTableTypeInfo/sysTableTypeDeleteAll";
//		var param={list:data};
//		ajaxPost(url, param, addSysTableTypeInfoSuccess, 5000, findError);
//	});
	


	// bootstrap table
	$('#kejiju_renyuan_table_datagrid').bootstrapTable({
		url : "/kjryJbxxInfo/page",
		dataType : "json",
//		toolbar : '#dbm_type_toolbar', // 工具按钮用哪个容器
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
                 name:$("#search_kejiju_renyuan_name").val(),
                 researchDirection:search_kejiju_renyuan_researchDirection,
                 porfessionalTitle:search_kejiju_renyuan_porfessionalTitle,
                 degree: search_kejiju_renyuan_degree
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '姓名',field : 'name',align : 'center',sortable : true,valign : 'middle'},
			{title : '开户行账号',field : 'bankAccount',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '开户行名称',field : 'bankName',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '出生日期',field : 'birthdate',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '出生地',field : 'birthplace',sortable : true,align : 'center',valign : 'middle'},
			{title : '中图分类号',field : 'cdc',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '学位',field : 'degree',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '学科分类代码',field : 'discipline',align : 'center',sortable : true,valign : 'middle'},
			{title : '学历',field : 'education',sortable : true,align : 'center',visible:false,visible:false},
			{title : '电子邮箱',field : 'email',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '紧急联系人',field : 'emergencyContact',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '紧急联系人电话',field : 'emergencyNumber',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '民族',field : 'ethnicGroup',align : 'center',sortable : true,valign : 'middle'},
			{title : '传真',field : 'fax',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '领域',field : 'field',align : 'center',sortable : true,valign : 'middle'},
			{title : '曾用名',field : 'formerName',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '家庭电话',field : 'homeTelephone',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '人才称号',field : 'honorary',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '证件号码',field : 'idNumber',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '证件类型',field : 'idType',align : 'center',valign : 'middle',sortable : true,valign : 'middle',visible:false},
			{title : '行业分类代码',field : 'industry',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '个人简介',field : 'introduce',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '微博',field : 'mobileTelephone',sortable : true,align : 'center',visible:false,valign : 'middle',visible:false},
			{title : '国籍',field : 'nationality',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '籍贯',field : 'nativePlace',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '办公电话',field : 'officeTelephone',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '单位名称',field : 'organization',sortable : true,align : 'center',valign : 'middle'},
			{title : '单位所在市',field : 'organizationCity',align : 'center',sortable : true,valign : 'middle'},
			{title : '单位性质',field : 'organizationProperty',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '单位所在省',field : 'organizationProvince',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '其他分类代码',field : 'otherCode',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '本地唯一标识',field : 'personId',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '个人学术网址',field : 'personUrls',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '照片路径',field : 'photoUrl',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '政治面貌',field : 'politicalStatus',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '职称',field : 'porfessionalTitle',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '职务级别',field : 'positionLevel',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '职务',field : 'positionTitle',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '通讯地址',field : 'personId',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '邮编',field : 'postcode',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '研究方向',field : 'researchDirection',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '工作性质',field : 'researchType',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '职业资质',field : 'vocationalQualifications',align : 'center',sortable : true,valign : 'middle',visible:false},
			{title : '详情',align : 'center',
				events: actionEvents3,
				formatter : function(value, row, index) {
//					var e = '<a href="#" mce_href="#" onclick="getEdit(\''	+ row.uuid + '\')">编辑</a> ';
//					var d = '<a href="#" mce_href="#" onclick="del(\''	+ row.uuid + '\')">删除</a> ';
					var f = '<button class="btn btn-default" id="kejirenyuan-showDetail">详情</button> ';
					return f;
				}
			},

		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
	
	$('#search_kejiju_renyuan_button').click(function() {
		$('#kejiju_renyuan_table_datagrid').bootstrapTable('refresh');
	});
});


// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#kejiju_renyuan_table_datagrid').bootstrapTable('resetView');
});

// 技术类型下拉框加载
function findJslySuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	});
	
	$('#search_kejiju_renyuan_researchDirection').select2({
	    placeholder: "研究方向",
	    tags: true,
	    data:data
	});
	//种子下拉点击事件
	$('#search_kejiju_renyuan_researchDirection').on('select2:select', function (evt) {
		search_kejiju_renyuan_researchDirection = evt.params.data.id;
		$('#kejiju_renyuan_table_datagrid').bootstrapTable('refresh');
		
	});
}



// 职称下拉框加载
function findZcSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	});
	
	//种子下拉
	$('#search_kejiju_renyuan_porfessionalTitle').select2({
	    placeholder: "职务",
	    tags: true,
	    data:data
	});
	
	//种子下拉点击事件
	$('#search_kejiju_renyuan_porfessionalTitle').on('select2:select', function (evt) {
		search_kejiju_renyuan_porfessionalTitle = evt.params.data.id;
		$('#kejiju_renyuan_table_datagrid').bootstrapTable('refresh');
		
	});
}

// 学位下拉框加载
function findXwSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value,text:value});
	});
	
	//种子下拉
	$('#search_kejiju_renyuan_degree').select2({
	    placeholder: "学位",
	    tags: true,
	    data:data
	});
	
	//种子下拉点击事件
	$('#search_kejiju_renyuan_degree').on('select2:select', function (evt) {
		search_kejiju_renyuan_degree = evt.params.data.id;
		$('#kejiju_renyuan_table_datagrid').bootstrapTable('refresh');
		
	});
}


function addSysTableTypeInfoSuccess(result){
	$('#kejiju_renyuan_table_datagrid').bootstrapTable('refresh');
}