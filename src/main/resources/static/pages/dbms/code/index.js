var blockclassPathtips = false;
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
		search_config_table_tabsName = evt.params.data.tabsName;
		if(search_config_table_tabsUuid=="请选择"){
			search_config_table_tabsUuid=null;
			search_config_table_tabsName=null;
			$("#add_generate_className").val("");
		}
		if(search_config_table_tabsName!=null){
			var tabsName = search_config_table_tabsName.substr(search_config_table_tabsName.indexOf(".")+1);
			var str = tabsName.split("_");
			var className ="";
			$.each(str,function(index,value){
				className = className+value.substr(0,1).toUpperCase()+value.substr(1);
			})
			$("#add_generate_className").val(className);
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
			
			$("#add_generate_classPath").val(data[0].classPath);
			$("#add_generate_className").val(data[0].className);
			search_config_table_tabsUuid = data[0].uuid;
			search_config_table_typeUuid = data[0].typeUuid;
			search_config_table_addrUuid = data[0].jdbcUuid;
			$("#search_config_table_addrUuid").val(search_config_table_addrUuid).trigger("change");
			$("#search_config_table_typeUuid").val(search_config_table_typeUuid).trigger("change",searchtableNames());
			$("#add_generate_po").prop({checked:data[0].generateEntity});
			$("#add_generate_dao").prop({checked:data[0].generateDao});
			$("#add_generate_service").prop({checked:data[0].generateService});
			$("#add_generate_controller").prop({checked:data[0].generateController});
			$("#add_generate_html").prop({checked:data[0].generateHtml});
			$("#add_generate_detail").prop({checked:data[0].generateDetail});
			$("#add_generate_sql").prop({checked:data[0].generateSql});
			$("#add_generate_doc").prop({checked:data[0].generateDoc});
			
			
			$("#dbm_type_add_modal").modal({
				show:true,
			})
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_type').click(function() {
		var data = $('#dbm_type_datagrid').bootstrapTable('getAllSelections');
		bootbox.setLocale("zh_CN");
		bootbox.confirm({
		message : "确定要删除选定行",
		title : "系统提示",
		callback : function(result) {
				if (result) {

					var url = "/sysDbmsGenerateCodeInfo/deleteAll";
					var param={list:data};
					ajaxPost(url, param, addSysTableTypeInfoSuccess, 5000, findError);
				}
			}
		});
		
	});
	
	$("#generate_code_down").bind("click",function(){
		var data = $('#dbm_type_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length>0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要导出代码",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysDbmsGenerateCodeInfo/generate";
						var param={username:username,list:data};
						ajaxPost(url, param, successGenerate);
					}
				}
			});
			
		}
	})
	
	$('#dbm_type_add_button').click(function() {
		
		var url = "/sysDbmsGenerateCodeInfo/save";
		var	sysTableTypeInfo={
			uuid:search_config_table_tabsUuid,
			typeUuid:search_config_table_typeUuid,
			jdbcUuid:search_config_table_addrUuid,
			classPath:$("#add_generate_classPath").val(),
			className:$("#add_generate_className").val(),
			generateEntity:$("#add_generate_po:checked").val()==null?0:1,
			generateDao: $("#add_generate_dao:checked").val()==null?0:1,
			generateService: $("#add_generate_service:checked").val()==null?0:1,
			generateController: $("#add_generate_controller:checked").val()==null?0:1,
			generateHtml: $("#add_generate_html:checked").val()==null?0:1,
			generateDetail: $("#add_generate_detail:checked").val()==null?0:1,
			generateSql: $("#add_generate_sql:checked").val()==null?0:1,
			generateDoc: $("#add_generate_doc:checked").val()==null?0:1,
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
		singleSelect : true,
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
                 sortOrder:params.sortOrder,
				 sortName:params.sortName,
                 sysDbmsGenerateCodeInfo:{
                	 
                 }
             }; 
             return param;
		},

		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle',switchable:false,visible:false},
//			{title : '类路径',field : 'classPath',align : 'center',sortable : true,valign : 'middle'},
			{title : '类名称',field : 'className',align : 'left',sortable : true,valign : 'middle'},
			{title : 'po',field : 'generateEntity',align : 'center',sortable : true,valign : 'middle',formatter:generateFormatter},
			{title : 'dao',field : 'generateDao',align : 'center',sortable : true,valign : 'middle',formatter:generateFormatter},
			{title : 'service',field : 'generateService',align : 'center',sortable : true,valign : 'middle',formatter:generateFormatter},
			{title : 'controller',field : 'generateController',align : 'center',sortable : true,valign : 'middle',formatter:generateFormatter},
			{title : 'html',field : 'generateHtml',align : 'center',sortable : true,valign : 'middle',formatter:generateFormatter},
			{title : 'detail',field : 'generateDetail',align : 'center',sortable : true,valign : 'middle',formatter:generateFormatter},
			{title : 'sql',field : 'generateSql',align : 'center',sortable : true,valign : 'middle',formatter:generateFormatter},
			{title : 'doc',field : 'generateDoc',align : 'center',sortable : true,valign : 'middle',formatter:generateFormatter},
			{title : '记录时间',field : 'createTime',align : 'center',sortable : true,valign : 'middle'},
			{title : '更新时间',field : 'updateTime',sortable : true,align : 'center'},
			{title : '标记',field : 'deleteFlag',sortable : true,align : 'center'}
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.data.content,total:result.data.totalElements}; // 绑定数据 
		}
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) {
    }).on('click-row.bs.table', function (e, row, ele,field) {
    	$(".info").removeClass("info");
    	$(ele).addClass("info");
    });
	
	// 提示信息
	blockclassPathtips = true;
	$("#add_generate_classPath").bind("keyup",function(){
		if(blockclassPathtips){
			blockclassPathtips = false;
			checkPath($("#add_generate_classPath").val());
		}
	})
});

function checkPath(classpath){
	var subpath = classpath.splite("\\.");
	if(subpath.length<5){
		showPopover($("#add_generate_classPath"), "需要输入更多的两层路径");
	}
	if(subpath.lastIndexOf(".")==subpath.length-1){
		showPopover($("#add_generate_classPath"), "需要输入更多的两层路径");
	}
}
function showPopover(target, msg) {
	  target.attr("data-original-title", msg);
	  $('[data-toggle="tooltip"]').tooltip();
	  target.tooltip('show');
	  target.focus();
	  //2秒后消失提示框
	  var id = setTimeout(
	    function () {
	      target.attr("data-original-title", "");
	      target.tooltip('hide');
	      blockclassPathtips = true;
	      checkPath(target.val());
	    }, 2000
	  );
	 
}

var search_config_table_typeUuid=null;
var search_config_table_addrUuid=null;
var search_config_table_tabsUuid=null;


// 生成完进行下载代码
function successGenerate(result){
	var url="/sysDbmsGenerateCodeInfo/downloadCode/"+result.data;
//	window.open(url,"_blank","downloadCode");
	window.location.href=url;
}

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
		data.push({id:value.uuid,text:value.tabsDesc+"("+value.tabsName+")",tabsName:value.tabsName});
	});
	$('#search_config_table_tabsUuid').empty();   
	$('#search_config_table_tabsUuid').select2({data:data});
	if(search_config_table_tabsUuid!=null){
		$("#search_config_table_tabsUuid").val(search_config_table_tabsUuid).trigger("change");
	}
	
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