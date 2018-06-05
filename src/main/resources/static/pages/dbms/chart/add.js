window.operateEvents = {
       
	    'click #clickE': function (e, value, row, index) {
	    	// 删除
	    	bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysPlantChartDimensionData/deleteAll";
						var param={list:[row]};
						ajaxPost(url, param, deleteDataSuccess, 5000, findError);
					}
				}
			});
	}
}
function deleteDataSuccess(result){
	$('#dbm_demdata_datagrid').bootstrapTable("refresh");
	loadCharts();
}
$(function(){
	
	var url = "/sysDicName/findkeyList";
	var param={code:"chartType"};
	ajaxPost(url, param, addchartTypeSuccess, 5000, findError);

	var url = "/sysPlantBindConf/findAll";
	ajaxPost(url, null, addPlantBindSuccess, 5000, findError);
	
	var url = "/sysPlantChartDimensionGroup/findAll";
	var param={};
	ajaxPost(url, param, addGroupSelectSuccess, 5000, findError);
	
	sysPlantChartDimension.deleteFlag==null?$('input[name="deleteFlag"]:first').parent().click():$('input[name="deleteFlag"][value="'+sysPlantChartDimension.deleteFlag+'"]').parent().click()
	loadtable();
	if(sysPlantChartDimension.uuid!=null){
		loadCharts();
	}
	
});
function addGroupSelectSuccess(result){
	var data=[{id:'',text:'请选择'}]
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.title})
	})
	$('#add_sysPlantChartDimension_groupUuid').select2({
		placeholder: "请选择",
		tags: true,
	    data:data
	});
	add_sysPlantChartDimension_groupUuid = groupUuid==null?sysPlantChartDimension.groupUuid:groupUuid;
	$("#add_sysPlantChartDimension_groupUuid").val(groupUuid==null?sysPlantChartDimension.groupUuid:groupUuid).trigger("change");
	$('#add_sysPlantChartDimension_groupUuid').on('select2:select', function (evt) {
		add_sysPlantChartDimension_groupUuid = evt.params.data.id;
	});
}
function loadtable(){
	
	// bootstrap table
	$('#dbm_demdata_datagrid').bootstrapTable({
		url : "/sysPlantChartDimensionData/findAll",
		dataType : "json",
//		toolbar : '#dbm_config_table_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
//		sortable : true, // 是否启用排序
//		sortOrder : "asc", // 排序方式
//		pagination : true, // 分页
//		pageNumber : 1, // 初始化加载第一页，默认第一页
//		pageSize : 10, // 每页的记录行数（*）
//		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
//		strictSearch : true,
//		showColumns : true, // 是否显示所有的列
//		showRefresh : true, // 是否显示刷新按钮
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
//		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
//		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
//		cardView : false, // 是否显示详细视图
//		detailView : false, // 是否显示父子表
//		showExport: true,                    
//        exportDataType: 'all',
//        exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],  //导出文件类型
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
		singleSelect : true,
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
		    		dimeUuid:$("#add_sysPlantChartDimension_uuid").val()==null?'0':$("#add_sysPlantChartDimension_uuid").val()
             }; 
             return param;
		},
		columns : [
//			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '条件',align : 'left',formatter:condetionsFormatter},
			{title : '操作',align : 'left',  events: operateEvents,formatter:btnFormatter},
		],
//		responseHandler: function(result){  // 成功时执行
//			return {rows:result.content,total:result.totalElements};
//		}, 
	});
}
function btnFormatter(e,row,index){
	return "<i  type='button' id='clickE'  class=' btn btn-default fa fa-remove' title='删除'></i>";
}
function condetionsFormatter(e,row,index){
	
	return row.colsDesc +"= " +row.conditions;
}
function conformSaveData(){
	var dimeUuid= $("#add_sysPlantChartDimension_uuid").val();
	console.log(dimeUuid);
	if(dimeUuid == ""){
		alert("请先提交模板信息信息！");
		return;
	}
	var params={
			colsUuid:add_sysPlantChartDimensionData_colsUuid,
			conditions:$("#add_sysPlantChartDimensionData_conditions").val(),
			colsDesc:add_sysPlantChartDimensionData_colsDesc,
			dimeUuid:dimeUuid,
			createUser:username,
			updateUser:username,
	}
	var url = "/sysPlantChartDimensionData/save";
	ajaxPost(url, params, addDataSuccess);
	
}
function addDataSuccess(result){
	add_sysPlantChartDimensionData_colsUuid = null;
	add_sysPlantChartDimensionData_colsDesc = null;
	$("#add_sysPlantChartDimensionData_colsUuid").val(null).trigger("change");
	$("#add_sysPlantChartDimensionData_conditions").val("");
	
	$('#dbm_demdata_datagrid').bootstrapTable("refresh");
	loadCharts();
	
}
function loadCharts(){
	new showCharts({
		  id :'dbm_config_table_view',
		  uuid:$("#add_sysPlantChartDimension_uuid").val(),
		  title:$("#add_sysPlantChartDimension_title").val(),
		  theme :"macarons"
		});
}

function addPlantBindSuccess(result){
	var data=[{id:'',text:'请选择'}]
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.colsDesc})
	})
	$('#add_sysPlantChartDimension_lableUuid').select2({
		placeholder: "请选择",
	    tags: true,
	    data:data
	});
	add_sysPlantChartDimension_lableUuid = sysPlantChartDimension.lableUuid;
	$("#add_sysPlantChartDimension_lableUuid").val(sysPlantChartDimension.lableUuid).trigger("change");
	$('#add_sysPlantChartDimension_lableUuid').on('select2:select', function (evt) {
		add_sysPlantChartDimension_lableUuid = evt.params.data.id;
	});
	
	$('#add_sysPlantChartDimension_lableUuid2').select2({
		placeholder: "请选择",
		tags: true,
	    data:data
	});
	add_sysPlantChartDimension_lableUuid2 = sysPlantChartDimension.lableUuid2;
	$("#add_sysPlantChartDimension_lableUuid2").val(sysPlantChartDimension.lableUuid2).trigger("change");
	$('#add_sysPlantChartDimension_lableUuid2').on('select2:select', function (evt) {
		add_sysPlantChartDimension_lableUuid2 = evt.params.data.id;
	});
	
	$('#add_sysPlantChartDimension_lableUuid3').select2({
		placeholder: "请选择",
		tags: true,
	    data:data
	});
	add_sysPlantChartDimension_lableUuid3 = sysPlantChartDimension.lableUuid3;
	$("#add_sysPlantChartDimension_lableUuid3").val(sysPlantChartDimension.lableUuid3).trigger("change");
	$('#add_sysPlantChartDimension_lableUuid3').on('select2:select', function (evt) {
		add_sysPlantChartDimension_lableUuid3 = evt.params.data.id;
	});
	
	$('#add_sysPlantChartDimension_lableUuid4').select2({
		placeholder: "请选择",
		tags: true,
	    data:data
	});
	add_sysPlantChartDimension_lableUuid4 = sysPlantChartDimension.lableUuid4;
	$("#add_sysPlantChartDimension_lableUuid4").val(sysPlantChartDimension.lableUuid4).trigger("change");
	$('#add_sysPlantChartDimension_lableUuid4').on('select2:select', function (evt) {
		add_sysPlantChartDimension_lableUuid4 = evt.params.data.id;
	});
	
	$('#add_sysPlantChartDimensionData_colsUuid').select2({
		placeholder: "请选择",
		tags: true,
	    data:data
	});
	$('#add_sysPlantChartDimensionData_colsUuid').on('select2:select', function (evt) {
		add_sysPlantChartDimensionData_colsUuid = evt.params.data.id;
		add_sysPlantChartDimensionData_colsDesc = evt.params.data.text;
	});
	
//	$('#add_sysPlantChartDimensionData_symbol').on('select2:select', function (evt) {
//		add_sysPlantChartDimensionData_symbol = evt.params.data.id;
//	});
}
var add_sysPlantChartDimensionData_colsDesc = null;
var add_sysPlantChartDimensionData_colsUuid= null;
var add_sysPlantChartDimension_lableUuid = null;
var add_sysPlantChartDimension_lableUuid2 = null;
var add_sysPlantChartDimension_lableUuid3 = null;
var add_sysPlantChartDimension_lableUuid4 = null;
var add_sysPlantChartDimension_chartType = null;
var add_sysPlantChartDimension_groupUuid = null;
function addchartTypeSuccess(result){
	var data=[{id:'',text:'请选择'}]
	$.each(result,function(index,value){
		data.push({id:value.keyValue,text:value.keyword})
	})
	$('#add_sysPlantChartDimension_chartType').select2({
		placeholder: "请选择",
		tags: true,
	    data:data
	});
	add_sysPlantChartDimension_chartType = sysPlantChartDimension.chartType;
	$("#add_sysPlantChartDimension_chartType").val(sysPlantChartDimension.chartType).trigger("change");
	$('#add_sysPlantChartDimension_chartType').on('select2:select', function (evt) {
		add_sysPlantChartDimension_chartType = evt.params.data.id;
		$("#add_sysPlantChartDimension_lableUuid2").parent().parent().css({"display":"none"});
		$("#add_sysPlantChartDimension_lableUuid3").parent().parent().css({"display":"none"});
		$("#add_sysPlantChartDimension_lableUuid4").parent().parent().css({"display":"none"});
		if(add_sysPlantChartDimension_chartType == "bar"||add_sysPlantChartDimension_chartType == "line"||add_sysPlantChartDimension_chartType == "tree"||add_sysPlantChartDimension_chartType == "sunburst"){
			$("#add_sysPlantChartDimension_lableUuid2").parent().parent().css({"display":""});
		}
		if(add_sysPlantChartDimension_chartType == "tree"||add_sysPlantChartDimension_chartType == "sunburst"){
			$("#add_sysPlantChartDimension_lableUuid3").parent().parent().css({"display":""});
			$("#add_sysPlantChartDimension_lableUuid4").parent().parent().css({"display":""});
		}
		
		
	});
}
//验证
function chartFormValidator(){
	$('#chart_dems_form').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	title : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '名称不能为空'
		            }
	            }
	        },
	        chartType1: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '图表类型不能为空'
					}
	    	    }
	        },
	        lableUuid: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '维度1不能为空'
					}
	    	    }
	        },
	        dimeOrder: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '排序不能为空'
					}
	    	    }
	        }	        
	    }
	});
}
function submit_add_addr(){
	chartFormValidator()
	$('#chart_dems_form').data("bootstrapValidator").validate();
	var flag = $('#chart_dems_form').data("bootstrapValidator").isValid();
	if (flag) {
		var params={
				uuid:sysPlantChartDimension.uuid,
				title:$("#add_sysPlantChartDimension_title").val(),
				chartType:add_sysPlantChartDimension_chartType,
				lableUuid:add_sysPlantChartDimension_lableUuid,
				lableUuid2:add_sysPlantChartDimension_lableUuid2,
				lableUuid3:add_sysPlantChartDimension_lableUuid3,
				lableUuid4:add_sysPlantChartDimension_lableUuid4,
				startNum:$("#add_sysPlantChartDimension_startNum").val()==""?0:$("#add_sysPlantChartDimension_startNum").val(),
				endNum:$("#add_sysPlantChartDimension_endNum").val()==""?10:$("#add_sysPlantChartDimension_endNum").val(),
				width:$("#add_sysPlantChartDimension_width").val()==""?3:$("#add_sysPlantChartDimension_width").val(),
				heigth:$("#add_sysPlantChartDimension_heigth").val()==""?230:$("#add_sysPlantChartDimension_heigth").val(),
				dimeOrder:$("#add_sysPlantChartDimension_dimeOrder").val(),
				groupUuid:add_sysPlantChartDimension_groupUuid,
				deleteFlag:$('input[name="deleteFlag"]:checked').val(),
				createUser:username,
				updateUser:username,
		}
		var url = "/sysPlantChartDimension/save";
		ajaxPost(url, params, addSuccess);
	}
	
	
}

function addSuccess(result){
	$("#add_sysPlantChartDimension_uuid").val(result.uuid);
	loadCharts();
//	$('#add_config_table').modal('hide');
}
