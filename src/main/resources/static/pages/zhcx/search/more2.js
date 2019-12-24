$(function() {

	
	// 数据库列表下拉
	ajaxPost('/sysDbmsTabsJdbcInfo/findAll', null, successSearchDatabaseInfoindex, null, findError);
	// 表类型列表下拉
	ajaxPost('/sysDbmsTabsTypeInfo/findAll', null, successSearchTableTypeInfoindex, null, findError);

	
	$("#search_table_tabsName").select2({
		tags: true,
		placeholder: "请选择",
		data: [{id:'请选择',text:'请选择'}]
	}).on('select2:select', function (evt) {
		search_table_tabsName = evt.params.data.id;
		$("#db_table_datagrid").empty();
		if(search_table_tabsName == "请选择"){
			search_table_tabsName = null;
		}else{
			tabsDesc= evt.params.data.tabsDesc;
			tabsName = evt.params.data.tabsName;
			jdbcUuid = evt.params.data.jdbcUuid;
			dbType=evt.params.data.dbType;
			_total=0;
			searchColumns(search_table_tabsName,tabsName,dbType,jdbcUuid);
		}
	});
	
});
var search_table_addrName = null;
var search_table_typeName = null;
function reloadTabsnameSelect(){
	var url ='/sysDbmsTabsInfo/findAllBySysTableInfoAndUsername';
	var param={
		jdbcUuid:search_table_addrName,
		typeUuid:search_table_typeName,
		createUser:username,
		updateUser:username,
	};
	
	ajaxPost(url, param, successreloadTabsnameSelect);
}
function successreloadTabsnameSelect(result){
	var data =[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text: value.tabsName+((value.tabsDesc == ""||value.tabsDesc == null)?"":"("+value.tabsDesc+")"),desc:value.tabsDesc,tabsName:value.tabsName,dbType:value.dbType,jdbcUuid:value.jdbcUuid});
	});
	$('#search_table_tabsName').empty();
	$('#search_table_tabsName').select2({data:data});
}

//数据库列表下拉
function successSearchDatabaseInfoindex(result){
	var data =[{id:'请选择',text:'请选择'}];
	search_table_addrName = null;
	$.each(result,function(index,value){
		data.push({id:value.uuid,text: value.databaseName});
	})
	
	$("#search_table_addrName").select2({
		tags: true,
		placeholder: "请选择",
		data: data
	}).on('select2:select', function (evt) {
		search_table_addrName = evt.params.data.id;
		if(search_table_addrName == "请选择"){
			search_table_addrName = null;
		}
		reloadTabsnameSelect();
	});
}

//表类型列表下拉
function successSearchTableTypeInfoindex(result){
	var data =[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text: value.typeName});
	})
	
	search_table_typeName = null;
	$("#search_table_typeName").select2({
		tags: true,
		placeholder: "请选择",
		data: data
	}).on('select2:select', function (evt) {
		search_table_typeName = evt.params.data.id;
		if(search_table_typeName == "请选择"){
			search_table_typeName = null;
		}
		reloadTabsnameSelect();
	});
}

function searchColumns(search_table_tabsName,tabsName,dbType,jdbcUuid){
	// 列查询
	var url_column = "/zhcx/findAllColumn";
	var param_column={
			"username":username,
			info:{tabsUuid:search_table_tabsName}
	};
	jQuery.ajax({
		type : 'POST',
		url : url_column,
		dataType : 'json',
		cache : false,
		contentType : 'application/json',
		data : JSON.stringify(param_column),
		success : function(result) {
			// 要显示的列组织；
			var column =[] ;
			$.each(result,function(index,value){
//				console.log(value);
				var userIndex = value.userIndex;
				var userIcon = value.userIcon;
				
				var colsDesc = (null != value.colsDesc ? value.colsDesc : "");
				var colsName = (null != value.colsName ? value.colsName : "");
				var colsView = ("" != colsDesc ? colsDesc : colsName);
				var coldType =(null != value.coldType ? value.coldType : "");
				if(userIndex==""||userIndex==null){
					column.push({
						"title" : colsView,
						"field" : colsName,
						"width":value.colsWidth==null?150:value.colsWidth,
						"align":value.colsAlign==null?"left":value.colsAlign,
						"valign":value.colsValign==null?"middle":value.colsValign,
						"visible":value.colsVisible==null?true:value.colsVisible,
						"switchable":value.colsSwitchable==null?true:value.colsSwitchable,
						formatter:function iconFormatter(value, row, index){
							if(value==null){
								return null;
							}
							if(coldType.indexOf("DATE")>-1||coldType.indexOf("TIME")>-1){
								value =new Date(parseInt(value)).format("yyyy/MM/dd"); 
//			    				value =new Date(parseInt(value)).toLocaleString(); 
							}
							if(userIcon!=null&&userIcon!=""){
								return f = '<i class="'+userIcon+' text-grey" title="'+value+'" userIndex="'+userIndex+'" ></i>';
							}
							return value;
						},
					});
				}else if(userIndex!=""){
					column.push({
						"title" : colsView,
						"field" : colsName,
						"width":value.colsWidth==null?150:value.colsWidth,
						"align":value.colsAlign==null?"left":value.colsAlign,
						"valign":value.colsValign==null?"middle":value.colsValign,
						"visible":value.colsVisible==null?true:value.colsVisible,
						"switchable":value.colsSwitchable==null?true:value.colsSwitchable,
						formatter:function otherFormatter(value, row, index){
							if(value==null){
								return null;
							}
							if(coldType.indexOf("DATE")>-1||coldType.indexOf("TIME")>-1){
								value =new Date(parseInt(value)).format("yyyy/MM/dd"); 
							}
							var f = value;
							if(userIcon==null||userIcon==""){
								f = '<a class="text-blue" title="'+value+'" userIndex="'+userIndex+'" onclick="forwordYjcx(\''+value+'\',\''+userIndex+'\',\''+colsName+'\')">'+value+' </a> ';
							}else{
								f = f = '<i class="'+userIcon+' text-blue" title="'+value+'" userIndex="'+userIndex+'" onclick="forwordYjcx(\''+value+'\',\''+userIndex+'\',\''+colsName+'\')" id="sfzh_search"></i> ';
							}
							return f;
						},
					});
				}
				
			})
			$('#db_table_datagrid').bootstrapTable('destroy');
			reset(tabsName,column,result,dbType,jdbcUuid) ;
		}
	});
}


//var paramsNode=[];
//表数据加载
function reset(tabsName,column,sysColumn,dbType,jdbcUuid) {
	_type="单表多条件查询";
//	var sysc = [];
//	$.each(sysColumn,function(index,valu){
//		if(valu.userIndex!=null&&valu.userIndex!=""){
//			sysc.push(valu);
//		}
//	});
	// bootstrap table
	
	$('#db_table_datagrid').bootstrapTable({
		url : "/zhcx/findAllTableRow",
		dataType : "json",
		// toolbar : '#toolbar', // 工具按钮用哪个容器
//	    cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
//	    sortOrder : "asc", // 排序方式
		pagination : true, // 分页
		pageNumber : 1, // 初始化加载第一页，默认第一页
		pageSize : 10, // 每页的记录行数（*）
		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
//	    strictSearch : true,
		showColumns : true, // 是否显示所有的列
		showRefresh : true, // 是否显示刷新按钮
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
//	    height : 550, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
//	    uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
//	    cardView : false, // 是否显示详细视图
//	    detailView : false, // 是否显示父子表
//	    singleSelect : false,
//	    showPaginationSwitch : true,
		locales : "zh-CN", // 表格汉化
//	    showExport : true, // 是否显示导出
//	    exportDataType : "basic", // basic', 'all', 'selected'.
//	    search : true, // 显示搜索框
		sidePagination : "server", // 服务端处理分页 server
		// 设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder
		// 设置为limit可以获取limit, offset, search, sort, order
		queryParamsType : "undefined",
		contentType: "application/json",
		method : "post", // 使用get请求到服务器获取数据
		queryParams : function queryParams(params) {
			var param = {
				pageNumber: params.pageNumber,    
				pageSize: params.pageSize,
				"username":username,
				tabsName : tabsName,
				jdbcUuid:jdbcUuid,
				dbType:dbType,
				type:_type,
				total:_total,
				list:sysColumn,
				paramList:paramList
			};
			return param;
		},
		columns : column,
		responseHandler: function(result){  // 成功时执行
			_total = result.total;
			return {rows:result.list,total:_total};
		}, 
		onLoadError:function(status,result){ // 错误时执行
			if($(result.responseText).find("form").attr("action")=="/login"){
				window.location.href="/";
			}
		},
		contextMenu: '#context-menu',
		onContextMenuItem: function(row,$ele){
			$.each(sysc,function(index,value){
				var val = eval("row."+value.colsName);
				if(val!=null){
					var userDesc ="";
					$.each(userindexList,function(ind,va){
						if(value.userIndex == va.userIndex){
							userDesc = va.userDesc;
						}
					});
					if(userDesc == "日期"){
						val = new Date(parseInt(val)).format("yyyy/MM/dd");
					};
					
					var node = {
						 "userDesc":userDesc,
						 "userIndex" : value.userIndex,
						 "value" : val,
					};
//					paramsNode.push(node);
					// 修改工具栏信息
					$("#right-aside").click();
					$("#right-aside").addClass("control-sidebar-open");
					$("#right-aside").find("ul").find("li").find("a").click();
					assideBarAppendNode(node);
				}
			});
		}
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) {
		$("#zhxx_mapString").val(JSON.stringify(row));
		$("#zhxx_paramString").val(JSON.stringify(sysColumn));
		$("#zhxx_tableName").val(tabsName);
		$("#zhxx_tableDesc").val(tabsDesc);
		$("#zhxxform").submit();
	}).on('click-row.bs.table', function (e, row, ele,field) {
		$(".info").removeClass("info");
		$(ele).addClass("info");
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#db_table_datagrid').bootstrapTable('resetView');
	});
	
	
	$('#db_table_datagrid').on('click','thead>tr>th',function () {
		var index = $('tr>th').index(this);
		var columnName = $(this).data("field");
		$.each(sysColumn,function(index,value){
			if(value.colsName == columnName){
				d = value;
				$("#update_config_column_colsName").text(d.colsName);
				$("#update_config_column_colsDesc").val(d.colsDesc);
				$("#update_config_column_colsOrder").val(d.colsOrder);
				$("#update_config_column_userIndex").val(d.userIndex);
				$("#update_config_column_userIcon").val(d.userIcon);
				$("#update_config_column_colsWidth").val(d.colsWidth);
				$("input[name='deleteFlag'][value='"+(d.deleteFlag==null?"0":d.deleteFlag)+"']").prop("checked",true);
				$("input[name='colsSort'][value='"+(d.colsSort==null?"true":d.colsSort)+"']").prop("checked",true);
				$("input[name='colsAlign'][value='"+(d.colsAlign==null?"left":d.colsAlign)+"']").prop("checked",true);
				$("input[name='colsValign'][value='"+(d.colsValign==null?"middle":d.colsValign)+"']").prop("checked",true);
				$("input[name='colsSwitchable'][value='"+(d.colsSwitchable==null?"true":d.colsSwitchable)+"']").prop("checked",true);
				$("input[name='colsVisible'][value='"+(d.colsVisible==null?"true":d.colsVisible)+"']").prop("checked",true);
				$("input[name='dimeFlag'][value='"+(d.dimeFlag==null?"false":d.dimeFlag)+"']").prop("checked",true);
				$("input[name='useful'][value='"+(d.useful==null?"false":d.useful)+"']").prop("checked",true);
				
				$('#update-show-myModal').modal({
					show : true
				});
			}
		})
	});
	
	$("#update_config_column_button").click(function(){
		d.colsDesc=$("#update_config_column_colsDesc").val();
		d.colsOrder=$("#update_config_column_colsOrder").val();
		d.colsSort=$("input[name='colsSort']:checked").val();
		d.userIndex=$("#update_config_column_userIndex").val();
		d.userIcon=$("#update_config_column_userIcon").val();
		d.colsWidth=$("#update_config_column_colsWidth").val();
		d.deleteFlag = $("input[name='deleteFlag']:checked").val();
		d.colsAlign=$("input[name='colsAlign']:checked").val();
		d.colsValign=$("input[name='colsValign']:checked").val();
		d.colsSwitchable=$("input[name='colsSwitchable']:checked").val();
		d.colsVisible=$("input[name='colsVisible']:checked").val();
		d.dimeFlag=$("input[name='dimeFlag']:checked").val();
		d.useful=$("input[name='useful']:checked").val();
		var url ='/sysDbmsTabsColsInfo/save';
		d.createTime=null;
		d.updateTime=null;
		ajaxPost(url, d, updSysColumnInfoSuccess);
	});
	function updSysColumnInfoSuccess(){
		$('#db_table_datagrid').bootstrapTable('destroy');
		searchColumns(search_table_tabsName,tabsName,dbType,jdbcUuid);
		$('#update-show-myModal').modal('hide');
	}
	
}
var paramList=[];
_total=0;
function forwordYjcx(value,userIndex,colsName){
	var paramList = [];
	paramList.push({
		"userIndex" : userIndex,
		"value" : value,
		"userDesc" : colsName+"("+userIndex+")",
		"operator" : "eq"
	});
	$("#zhcx_sousuo_paramString").val(JSON.stringify(paramList));
	$("#zhcx_type").val("一键查询单表多个不同索引拼接");
	$("#sosuoform").submit();
}


function add_select_icon(){
	winId="add_icon_modal";
	var iconName;
	if($("#add_menu_icon").val()){
		iconName=encodeURIComponent($("#add_menu_icon").val());
	}
	modals.openWin({
		winId:winId,
		title:'图标选择器（双击选择）',
		width:'1000px',
		url:"/icon/nodecorator/select?iconName="+iconName
	});
}
//回填图标
function fillBackIconName(icon_name){
	$("#update_config_column_userIcon").val(icon_name); 
	$('#update-show-myModal').modal({
		show: true
	});
}