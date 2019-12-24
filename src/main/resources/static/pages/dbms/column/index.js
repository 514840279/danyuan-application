_tableUuid="0";
$(function() {
	$('#addnew_column_table').click(function() {
			modals.openWin({
				winId:"addnew_column_show_view_table",
				title:'列选择',
				width:'1000px',
				url:"templates/dbms/column/add_column"
			});
		
	});
	$('#editold_column_table').click(function() {
		var data = $('#dbm_config_column_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			var d = data[0];
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
				show: true
			});
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_column_table').click(function() {
		var data = $('#dbm_config_column_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysDbmsTabsColsInfo/delete";
						var param={list:data};
						ajaxPost(url, param, addSysColumnInfoSuccess, 5000, findError);
					}
				}
			});
		}
	});
	
	$("#update_config_column_button").click(function(){
		var d = $('#dbm_config_column_datagrid').bootstrapTable('getAllSelections')[0];
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
		ajaxPost(url, d, addSysColumnInfoSuccess, 5000, findError);
	})
	
	
	showClomnTable();

	var url = "/sysDbmsTabsTypeInfo/findAll";
	ajaxPost(url, null, addSelectedTypeSuccess, 5000, findError);
	
	var url = "/sysDbmsTabsJdbcInfo/findAll";
	ajaxPost(url, null, addSelectedAddrSuccess, 5000, findError);

});


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
update_config_table_typeUuid=" ";
search_config_table_typeUuid=null;
function addSelectedTypeSuccess(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.typeName});
	});
	
	$('#search_config_table_typeUuid').select2({
		tags: true,
		data:data,
		placeholder: "请选择",
	});
	search_config_table_typeUuid=null;
	$('#search_config_table_typeUuid').on('select2:select', function (evt) {
		search_config_table_typeUuid = evt.params.data.id;
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

search_config_table_addrUuid="";
function addSelectedAddrSuccess(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.databaseName});
	});
	
	$('#search_config_table_addrUuid').select2({
		tags: true,
		data:data,
		placeholder: "请选择",
	});
	
	$('#search_config_table_addrUuid').on('select2:select', function (evt) {
		search_config_table_addrUuid = evt.params.data.id;
		searchtableNames();
	});
}

function addSelectedTableSuccess(result){
	var data = [{id:" ",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.tabsDesc+"("+value.tabsName+")"});
	});
	$('#search_config_table_tableUuid').empty();   
	$('#search_config_table_tableUuid').select2({
		tags: true,
		data:data,
		placeholder: "请选择",
	});
	
	$('#search_config_table_tableUuid').on('select2:select', function (evt) {
		_tableUuid = evt.params.data.id;
		$('#dbm_config_column_datagrid').bootstrapTable("refresh");
	});
}

function showClomnTable(){
	// bootstrap table
	$('#dbm_config_column_datagrid').bootstrapTable({
		url : "/sysDbmsTabsColsInfo/page",
		dataType : "json",
		toolbar : '#dbm_config_column_toolbar', // 工具按钮用哪个容器
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
//		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
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
					info:{tabsUuid: _tableUuid}
			}; 
			return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '列名称',field : 'colsName',align : 'left',sortable : true,valign : 'middle'},
			{title : '列中文含义',field : 'colsDesc',align : 'left',sortable : true,valign : 'middle'},
			{title : '列顺序',field : 'colsOrder',sortable : true,align : 'right'},
			{title : '用户配置索引列',field : 'userIndex',sortable : true,align : 'left',valign : 'middle',visible:true},
			{title : '列表显示标识',field : 'colsVisible',sortable : true,align : 'left'},
			{title : '字段选择标识',field : 'colsSwitchable',sortable : true,align : 'left'},
			{title : '支持排序条件',field : 'colsSort',sortable : true,align : 'left'},
			{title : '支持图表纬度',field : 'dimeFlag',sortable : true,align : 'left',formatter:function(deleteFlag){
				return  deleteFlag==0?"不支持":"支持";
			}},
			{title : '显示宽度',field : 'colsWidth',sortable : true,align : 'left'},
			{title : '对齐（横）',field : 'colsAlign',sortable : true,align : 'left'},
			{title : '对齐（纵）',field : 'colsValign',sortable : true,align : 'left'},
			{title : '显示图标',field : 'userIcon',align : 'left',sortable : true,valign : 'middle',formatter:function(userIcon){
				return "<i class='"+userIcon+"'></i>";
			}},
			{title : '启用标记',field : 'deleteFlag',sortable : true,align : 'left',formatter:function(deleteFlag){
				return  deleteFlag==1?"删除":"启用";
			}},
			{title : '更新时间',field : 'updateTime',align : 'left',sortable : true,valign : 'middle'},
			{title : '更新人',field : 'updateUser',sortable : true,align : 'left',valign : 'middle',visible:false},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) {
    }).on('click-row.bs.table', function (e, row, ele,field) {
    	$(".info").removeClass("info");
    	$(ele).addClass("info");
    });
}
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_config_table_datagrid').bootstrapTable('resetView');
});

function addSysColumnInfoSuccess(result){
	$('#dbm_config_column_datagrid').bootstrapTable('refresh');
	$('#update-show-myModal').modal('hide');
}