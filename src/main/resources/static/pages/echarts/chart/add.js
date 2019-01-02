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

// 删除条件成功
function deleteDataSuccess(result){
	$('#dbm_demdata_datagrid').bootstrapTable("refresh");
	loadCharts();
}


//dime 全局变量
var add_sysPlantChartDimensionData_colsDesc = null;
var add_sysPlantChartDimensionData_colsUuid= null;
var add_sysPlantChartDimension_lableUuid = null;
var add_sysPlantChartDimension_lableUuid2 = null;
var add_sysPlantChartDimension_lableUuid3 = null;
var add_sysPlantChartDimension_lableUuid4 = null;
var add_sysPlantChartDimension_chartType = null;
var add_sysPlantChartDimension_groupUuid = null;
var add_sysPlantChartDimension_dateType = null;

$(function(){
	
	// 初始化属性
	init();
	
	// 条件渲染
	initParam();
	
});

//=========================
//图表属性
//=========================

// 初始化 函数 
function init(){
	//  ------ 图表属性  -- 
	// 图表类型
	var url = "/sysDicName/findkeyList";
	var param={code:"chartType"};
	ajaxPost(url, param, addchartTypeSuccess, 5000, findError);
	// 纬度类型
	var url = "/sysPlantBindConf/findAll";
	ajaxPost(url, null, addPlantBindSuccess, 5000, findError);
	// 分组
	var url = "/sysPlantChartDimensionGroup/findAll";
	var param={};
	ajaxPost(url, param, addGroupSelectSuccess, 5000, findError);
	// 横坐标
	var url = "/sysDicName/findkeyList";
	var param={code:"chart_date_type"};
	ajaxPost(url, param, addchartDateTypeSuccess, 5000, findError);
	// 默认选中的
	sysPlantChartDimension.deleteFlag==null?$('input[name="deleteFlag"]:first').parent().click():$('input[name="deleteFlag"][value="'+sysPlantChartDimension.deleteFlag+'"]').parent().click()
	
	//  ------ 预览图  -- 
	//loadtable();
	if(sysPlantChartDimension.uuid!=null){
		loadCharts();
	}

}

// 横轴 日期 选择 下拉 渲染
function addchartDateTypeSuccess(result){
	var data=[{id:'请选择',text:'请选择'}]
	$.each(result,function(index,value){
		data.push({id:value.keyValue,text:value.keyword});
	})
	$('#add_sysPlantChartDimension_dateType').select2({
		placeholder: "请选择",
		tags: true,
	    data:data
	});
	add_sysPlantChartDimension_dateType = sysPlantChartDimension.dateType;
	$("#add_sysPlantChartDimension_dateType").val(add_sysPlantChartDimension_dateType==null ?"请选择":add_sysPlantChartDimension_dateType).trigger("change");
	$('#add_sysPlantChartDimension_dateType').on('select2:select', function (evt) {
		add_sysPlantChartDimension_dateType = evt.params.data.id;
		if(add_sysPlantChartDimension_dateType == "请选择"){
			add_sysPlantChartDimension_dateType=null;
		}
	});
}

// 分组渲染
function addGroupSelectSuccess(result){
	var data=[{id:'请选择',text:'请选择'}]
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.title})
	})
	$('#add_sysPlantChartDimension_groupUuid').select2({
		placeholder: "请选择",
		tags: true,
	    data:data
	});
	add_sysPlantChartDimension_groupUuid = sysPlantChartDimension.groupUuid;
	$("#add_sysPlantChartDimension_groupUuid").val(sysPlantChartDimension.groupUuid==null?'请选择':sysPlantChartDimension.groupUuid).trigger("change");
	$('#add_sysPlantChartDimension_groupUuid').on('select2:select', function (evt) {
		add_sysPlantChartDimension_groupUuid = evt.params.data.id;
		if(add_sysPlantChartDimension_groupUuid=='请选择'){
			add_sysPlantChartDimension_groupUuid = null
		}
	});
}

// 提交条件
function conformSaveData(){
	var dimeUuid= $("#add_sysPlantChartDimension_uuid").val();

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

// 统计纬度
function addPlantBindSuccess(result){
	var data=[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		if(value.dimeFlag==1&&value.deleteFlag==1){
			data.push({id:value.uuid,text:value.colsDesc});
		}
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
		if(add_sysPlantChartDimension_lableUuid=='请选择'){
			add_sysPlantChartDimension_lableUuid=null;
		}
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
		if(add_sysPlantChartDimension_lableUuid2=='请选择'){
			add_sysPlantChartDimension_lableUuid2=null;
		}
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
		if(add_sysPlantChartDimension_lableUuid3=='请选择'){
			add_sysPlantChartDimension_lableUuid3=null;
		}
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
		if(add_sysPlantChartDimension_lableUuid4=='请选择'){
			add_sysPlantChartDimension_lableUuid4=null;
		}
	});
	
	// 条件渲染
	loadConfParam(result);
}

//修改图标dime
function submit_add_addr(){
	chartFormValidator();
	$('#chart_dems_form').data("bootstrapValidator").validate();
	var flag = $('#chart_dems_form').data("bootstrapValidator").isValid();
	if (flag) {
		if(add_sysPlantChartDimension_chartType=="map"){
			
		}else if(add_sysPlantChartDimension_dateType==null&&add_sysPlantChartDimension_lableUuid==null&&add_sysPlantChartDimension_lableUuid2==null){
			alert("横坐标/纬度1/纬度2，至少选择一个");
		}
		
		var params={
				uuid:sysPlantChartDimension.uuid,
				theme:sysPlantChartDimension.theme,
				title:$("#add_sysPlantChartDimension_title").val(),
				chartType:add_sysPlantChartDimension_chartType,
				lableUuid:add_sysPlantChartDimension_lableUuid,
				lableUuid2:add_sysPlantChartDimension_lableUuid2,
				lableUuid3:add_sysPlantChartDimension_lableUuid3,
				lableUuid4:add_sysPlantChartDimension_lableUuid4,
				dateType:add_sysPlantChartDimension_dateType,
				startNum:$("#add_sysPlantChartDimension_startNum").val()==""?0:$("#add_sysPlantChartDimension_startNum").val(),
				endNum:$("#add_sysPlantChartDimension_endNum").val()==""?10:$("#add_sysPlantChartDimension_endNum").val(),
				width:$("#add_sysPlantChartDimension_width").val()==""?3:$("#add_sysPlantChartDimension_width").val(),
				height:$("#add_sysPlantChartDimension_heigth").val()==""?2:$("#add_sysPlantChartDimension_heigth").val(),
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

//修改dime 成功 重载图表预览
function addSuccess(result){
	alert("修改属性成功！");
	$("#add_sysPlantChartDimension_uuid").val(result.uuid);
	loadCharts();
//	$('#add_config_table').modal('hide');
}

//=========================
//图表属性
//=========================




//=========================
// 图表条件
//=========================
function initParam(){
	// -----  条件数据加载  --
	// 加载查询参数 公告类型 地址
	var submiturl = "/sysPlantLableConf/findAll";
	ajaxPost(submiturl, {}, loadParamsConf);

}

// 渲染条件
function loadConfParam(result){
	// 添加条件
	$.each(result,function(index,value){
		if(value.paramFlag==1&&value.deleteFlag==1){
			var item =  $("#templates").find("li").clone(false);
			item.find(".item_tit").text(value.colsDesc+":")
			item.attr("title",value.uuid);
			// 关键词事件
			var keye = item.find(".item_cont");
			_map[value.uuid]=[];
			keye.find("input:eq(1)").bind("click",function(){
				var word = keye.find("input:eq(0)").val();
				if (word == "") {
					return;
				}
				_map[value.uuid].push(word);
				var html = keye.find("span:eq(0)").clone(false);
				html.css({
					"display" : ""
				});
				html.find("span").text(word);
				html.bind('click', function() {
					html.remove();
					_map[value.uuid].splice(_map[value.uuid].indexOf(word), 1);
					//console.log(_map[value.uuid]);
				})
				keye.append(html);
				//console.log(_map[value.uuid]);
				keye.find("input:eq(0)").val('');
				
			})

			$("#param_body").append(item);
		}
	})
	
	// 关键词事件
	var keye = $("#param_keyword");
	_map['keyword']=[];
	keye.find("input:eq(1)").bind("click",function(){
		var word = keye.find("input:eq(0)").val();
		if (word == "") {
			return;
		}
		_map['keyword'].push(word);
		var html = keye.find("span:eq(0)").clone(false);
		html.css({
			"display" : ""
		});
		html.find("span").text(word);
		html.bind('click', function() {
			html.remove();
			_map['keyword'].splice(_map['keyword'].indexOf(word), 1);
			// console.log(_map['keyword']);
		})
		keye.append(html);
		// console.log(_map['keyword']);
		keye.find("input:eq(0)").val('');
		
	})

	// 绑定提交参数事件
	$("#submit_param_id").bind("click",function(){
		submit_add_param(result);
	})
	
	
	setTimeout(function () { 
		// 重新加载条件数据
		// 回填数据
		var submiturl = "/sysPlantChartDimensionData/findAll";
		ajaxPost(submiturl, {dimeUuid:sysPlantChartDimension.uuid}, resetParamsConf);
	},800); 
}

// 回填数据
function resetParamsConf(result){
	console.log(result);
	var parambody = $("#param_body");
	$.each(result,function(index,value){
		var symbol = value.symbol;
		if(symbol=="in"){
			_map[value.colsUuid].push(value.conditions);
			// 
			var item = parambody.find("li[title='"+value.colsUuid+"']");
			var type = item.attr("type");
			if(type == 'keyword'){
				// 重加 数据
				resetItemKeyword(value,item);
			}else if(type =="slectcheck"){
				// 重选数据
				resetItemslectcheck(value,item);
			}
			
		}else if(symbol == "gt"){
			var colsDesc = value.colsDesc;
			if(colsDesc == "公告日期"){
				$("#param_dateMin").val(value.conditions);
			}else if(colsDesc == "总预算金额数值"){
				$("#param_moneyMin").val(value.conditions);
			}
		}else if(symbol == "lt"){
			var colsDesc = value.colsDesc;
			if(colsDesc == "公告日期"){
				$("#param_dateMax").val(value.conditions);
			}else if(colsDesc == "总预算金额数值"){
				$("#param_moneyMax").val(value.conditions);
			}
		}
	})
}

// 回填 输入框的数据
function resetItemKeyword(value,item){
	var keye = item.find(".item_cont");
	var word = value.conditions;
	var html = keye.find("span:eq(0)").clone(false);
	html.css({
		"display" : ""
	});
	html.find("span").text(word);
	html.bind('click', function() {
		html.remove();
		_map[value.colsUuid].splice(_map[value.colsUuid].indexOf(word), 1);
	})
	keye.append(html);
		
}

// 回填 多选 数据
function resetItemslectcheck(value,item){
	var lilist = item.find(".item_cont").find("ul li");
	$.each(lilist,function(index,val){
		var text = $(val).find("span").text()
		if(text == value.conditions ){
			$(val).find("input").attr("checked",true);
		}
	})
}

//展示更多按钮 有后台管理配置显示更多按钮
function more(value, li) {
	// 展示更多按钮
	if (value.more) {
		var more = li.find('div.item_more');
		more.css({
			"display" : ""
		});
		more.find('a.fa-angle-double-down').click(function() {
			$(this).css({
				"display" : "none"
			});
			more.find('a.fa-angle-double-up').css({
				"display" : ""
			});
			li.find("ul").addClass("all")
		});
		more.find('a.fa-angle-double-up').click(function() {
			$(this).css({
				"display" : "none"
			});
			more.find('a.fa-angle-double-down').css({
				"display" : ""
			});
			li.find("ul").removeClass("all")
		});
	}
}

// 图标类型渲染
function addchartTypeSuccess(result){
	var data=[{id:'请选择',text:'请选择'}]
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
		if(add_sysPlantChartDimension_chartType == '请选择'){
			add_sysPlantChartDimension_chartType=null;
		}
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

// 验证
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

// 加载配置
function loadParamsConf(result){
	
	$.each(result,function(index,value){
		if(value.deleteFlag){
			var ul = $('#param_body');
			var li = ul.find('#show_change_search_box_List_li').clone(false);
			li.attr("id","");
			li.attr("title",value.bindUuid);
			li.find('div.item_tit').text(value.name+":");
			li.css({"display":""});
			// 按照用户设置展示不同的按钮
//			switch(value.type){
//				case("radio"):
//					loadRadio(value,li);
//					break;
//				case("checkbox"):
//					loadCheckbox(value,li);
//					break;
//				case("selected"):
//					loadSelected(value,li);
//					break;
//				default:
//					break;
//			}
			// 这里只给多选的
			loadCheckbox(value,li);
			// 展示更多按钮 这里必须展示更多
//			if(value.more){
				var more = li.find('div.item_more');
				more.css({"display":""});
				more.find('a.fa-angle-double-down').click(function(){
					$(this).css({"display":"none"});
					more.find('a.fa-angle-double-up').css({"display":""});
					li.find("ul").addClass("all")
				});
				more.find('a.fa-angle-double-up').click(function(){
					$(this).css({"display":"none"});
					more.find('a.fa-angle-double-down').css({"display":""});
					li.find("ul").removeClass("all")
				});
//			}
			ul.find('li:first').before(li);
		}
	})
}

// 多选
function loadCheckbox(value,li){
	var bindUuid =value.bindUuid;
	_map[bindUuid] = [];
	li.find("ul li input").attr("name",value.uuid);
//	li.find("ul li:eq(0) span").click(function(){
//		_map[bindUuid] = [];
//		li.find("ul li input:checked").attr("checked",false);
//	})
	var submiturl = "/sysPlantLableDic/findAllByParentId";
	
	jQuery.ajax({
		type : 'POST',
		url : submiturl,
		dataType : 'json',
		cache : false,
		contentType : 'application/json',
		data : JSON.stringify({typeUuid:value.uuid}),
		success : function(result) {

			$.each(result,function(index,value){
				var lili = li.find('ul').find('li:eq(0)').clone(false);
				lili.css({"display":""});
				lili.find('input').attr("type","checkbox");
				lili.find('span').text(value.word);
				lili.find('span').click(function(){
					var length = lili.find("input:checked").length;
					if(!length){
						_map[bindUuid].push(value.word);
						li.find('ul li input:eq(0)').attr("checked",false);
					}else{
						_map[bindUuid].splice(_map[bindUuid].indexOf(value.word), 1);
					}
				})
				li.find('ul').append(lili);
			})
		}
	})
}

// 参数提交
function submit_add_param(result){

	var param = {
		pmap:_map,
		dime:sysPlantChartDimension,
		confs:result,
		moneyMin: $("#param_moneyMin").val(),
		moneyMax: $("#param_moneyMax").val(),
		dateMin: $("#param_dateMin").val(),
		dateMax: $("#param_dateMax").val(),
		username:username
	};
	console.log(param);
	var url ="/sysPlantChartDimensionData/saveData";
	ajaxPost(url,param,successSaveParams);
}
function successSaveParams(result){
	alert("修改成功！")
	loadCharts()
}

//=========================
// 图表条件
//=========================


//=========================
// 图表预览
//=========================

//预览图标
function loadCharts(){
	new showCharts({
		  id :'dbm_config_table_view',
		  uuid:$("#add_sysPlantChartDimension_uuid").val(),
		  title:$("#add_sysPlantChartDimension_title").val(),
		  theme :"macarons"
	});
}