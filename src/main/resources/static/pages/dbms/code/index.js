$(function() {
	
	// 数据库列表下拉
	ajaxPost('/sysDbmsTabsJdbcInfo/findAll', null, successSearchDatabaseInfoindex, null, findError);
	// 表类型列表下拉
	ajaxPost('/sysDbmsTabsTypeInfo/findAll', null, successSearchTableTypeInfoindex, null, findError);

	
	$('#search_config_table_tabsUuid').select2({
	    tags: true,
	    placeholder: "请选择",
	}).on('select2:select', function (evt) {
		search_config_table_tabsUuid = evt.params.data.id;
		if(search_config_table_tabsUuid=="请选择"){
			search_config_table_tabsUuid=null;
		}
		
	});
	
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
		var url = "/sysDbmsGenerateCodeInfo/deleteAll";
		var param={list:data};
		ajaxPost(url, param, addSysTableTypeInfoSuccess, 5000, findError);
	});
	
	$('#dbm_type_add_button').click(function() {
		
		var url = "/sysDbmsGenerateCodeInfo/save";
		var	sysTableTypeInfo={
			uuid:search_config_table_tabsUuid,
			typeUuid:search_config_table_typeUuid,
			jdbcUuid:search_config_table_addrUuid,
			classPath:$("#add_generate_classPath").val(),
			className:$("#add_generate_className").val(),
			generateEntity:$("#add_generate_po:checked").val(),
			generateDao: $("#add_generate_dao:checked").val(),
			generateService: $("#add_generate_service:checked").val(),
			generateController: $("#add_generate_controller:checked").val(),
			generateHtml: $("#add_generate_html:checked").val(),
			generateJs: $("#add_generate_js:checked").val(),
			generateSql: $("#add_generate_sql:checked").val(),
			deleteFlag:1,
			createUser:username,
			updateUser:username,
		}
		console.log(sysTableTypeInfo);
		ajaxPost(url, sysTableTypeInfo, addSysTableTypeInfoSuccess, 5000, findError);
		$('#dbm_type_add_modal').modal("hide");
	});
	
	

	// bootstrap table
	$('#dbm_type_datagrid').bootstrapTable({
		url : "/sysDbmsGenerateCodeInfo/page",
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
                 sysDbmsGenerateCodeInfo:{
                	 
                 }
             }; 
             return param;
		},

		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle',switchable:false,visible:false},
			{title : '表名称',field : 'tabsName',sortable : true,align : 'center'},
			{title : '类名称',field : 'className',align : 'center',sortable : true,valign : 'middle'},
			{title : 'po',field : 'generateEntity',align : 'center',sortable : true,valign : 'middle',formatter:generateFormatter},
			{title : '记录时间',field : 'createTime',align : 'center',sortable : true,valign : 'middle'},
			{title : '更新时间',field : 'updateTime',sortable : true,align : 'center'},
			{title : '标记',field : 'deleteFlag',sortable : true,align : 'center'}
		],
		responseHandler: function(result){  // 成功时执行
			
			return {rows:result.data.content,total:result.data.totalElements};
		}, 
	});

});
var search_config_table_typeUuid=null;
var search_config_table_addrUuid=null;
var search_config_table_tabsUuid=null;

//数据库列表下拉
function successSearchDatabaseInfoindex(result){
	var data =[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text: value.databaseName});
	})
	
	$("#search_config_table_addrUuid").select2({
	    tags: true,
	    placeholder: "请选择",
	    data: data
	});
	search_config_table_addrUuid = null;
	$('#search_config_table_addrUuid').on('select2:select', function (evt) {
		search_config_table_addrUuid = evt.params.data.id;
		if(search_config_table_addrUuid == "请选择"){
			search_config_table_addrUuid = null;
		}
		searchtableNames();
	});
}


//表类型列表下拉
function successSearchTableTypeInfoindex(result){
	var data =[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text: value.typeName});
	})
	
	$("#search_config_table_typeUuid").select2({
	    tags: true,
	    placeholder: "请选择",
	    data: data
	});
	search_config_table_typeUuid = null;
	$('#search_config_table_typeUuid').on('select2:select', function (evt) {
		search_config_table_typeUuid = evt.params.data.id;
		if(search_config_table_typeUuid == "请选择"){
			search_config_table_typeUuid = null;
		}
		searchtableNames();
	});
}


function searchtableNames(){
	var param ={
		typeUuid:search_config_table_typeUuid,
		jdbcUuid:search_config_table_addrUuid,
	}
	var url = "/sysDbmsTabsInfo/findAllBySysTableInfo";
	ajaxPost(url, param, addSelectedTableSuccess, 5000, findError);
}

function addSelectedTableSuccess(result){
	var data = [{id:"请选择",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.tabsDesc+"("+value.tabsName+")"});
	});
	$('#search_config_table_tabsUuid').empty();   
	$('#search_config_table_tabsUuid').select2({data:data});
	
}


// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_type_datagrid').bootstrapTable('resetView');
});


function generateFormatter(value,row,index){
	if(value){
		return "<i class=\"fa fa-check\" style=\"color: green;\"></i>";
	}else{
		return "";
	}
}


function addSysTableTypeInfoSuccess(result){
	$('#dbm_type_datagrid').bootstrapTable('refresh');
}