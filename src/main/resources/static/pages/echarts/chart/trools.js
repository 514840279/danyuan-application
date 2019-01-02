// 全局数据
var chart_group_select_id="";
var chart_layout_select_id="";
var chartTheme_select_id ="";

$(function(){
	// 页面初始化加载方法
	init();
});

// 初始化
function init(){
	// 初始化数据
	chart_group_select_id="";
	chart_layout_select_id="";
	chartTheme_select_id ="";
	
	// 选择布局
	var url = "/sysDicName/findkeyList";
	var param={code:"chart_layout_select"};
	ajaxPost(url, param, loadChartLoyoutSelectSuccess, 5000, findError);

	// 选择主题
	var url = "/sysDicName/findkeyList";
	var param={code:"chartTheme"};
	ajaxPost(url, param, loadChartThemeSelectSuccess, 5000, findError);

	// 新建分组
	$("#add_group_btn").bind("click",function(){
		$("#add_group_btn_modal").modal({show:true});
	});
	
	// 分组下拉分组
	var url = "/sysPlantChartDimensionGroup/findAll";
	ajaxPost(url, {}, loadChartGroupSelect);
	// 初始化分组下拉
	$("#chart_group_select_id").select2({
		placeholder: "选择分组",
		tags: true,
	    width:120
	}).on('select2:select', function (evt) {
		chart_group_select_id = evt.params.data.id;
		chart_layout_select_id="";
		if(chart_group_select_id == "选择分组"){
			chart_group_select_id="";
		}else if(chart_group_select_id !=""){
			// 根据选择的布局加载不同的页面
			url = "/sysPlantChartDimension/findAllDime3?uuid="+chart_group_select_id;
			$("#chart_context").load(url);
			$("#chart_layout_select_id").val("选择布局").trigger("change");
		}
	});
	
	// 删除当前分组
	$("#remove_group_btn").bind("click",function(){
		if(chart_group_select_id==""){
			alert("当前没有选中任何分组！");
			return;
		}else{
			// 删除
	    	bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除分组",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url="/sysPlantChartDimensionGroup/delete";
						var param={
							uuid:chart_group_select_id
						}
						ajaxPost(url,param,deleteGroupSuccess);
					}
				}
			});
		}
		
	})
	
	// 查看大屏
	$("#show_group_btn").bind("click",function(){
		// 如果未选者布局 提示
		if(chart_group_select_id==""){
			alert("请选择分组");
			return;
		}
		// 获取屏幕宽度
		url = "/sysPlantChartDimension/showAllDime3?uuid="+chart_group_select_id;
    	
    	modals.openWin({
	    	winId:"show_config_table",
	    	title:'修改分组信息',
	    	width:screen.width+'px',
	    	url:url
	    });
	})
	
	// 默认展示图表区域 
	loadGroup();
}

//默认展示图表区域 
function loadGroup(){
	url = "/sysPlantChartDimension/findAllDime3?uuid="+chart_group_select_id;
	$("#chart_context").load(url);
}

// 删除分组成功后重载分组
function deleteGroupSuccess(result){
	chart_group_select_id = "";
	chart_layout_select_id="";
	chartTheme_select_id ="";
	$("#chart_layout_select_id").val("选择布局").trigger("change");
	$("#chartTheme_select_id").val("选择主题").trigger("change");
	
	if(result == "1"){
		$("#chart_group_select_id").empty();
		
		addGroupSuccess();
		
		// 根据选择的布局加载不同的页面
		url = "/sysPlantChartDimension/findAllDime3?uuid="+chart_layout_select_id;
		$("#chart_context").load(url);
	}
}

// 选择布局
function loadChartLoyoutSelectSuccess(result){
	var data = [{id:"选择布局",text:"选择布局"}];
	$.each(result,function(index,value){
		data.push({id:value.keyValue,text:value.keyword})
	})
	$('#chart_layout_select_id').select2({
		placeholder: "选择布局",
		tags: true,
	    data:data,
	    width:120
	});
	
	$('#chart_layout_select_id').on('select2:select', function (evt) {
		chart_layout_select_id = evt.params.data.id;
		chart_group_select_id = "";
		if(chart_layout_select_id == "选择布局"){
			chart_layout_select_id="";
		}
		if(chart_layout_select_id != ""){
			// 根据选择的布局加载不同的页面
			url = "/sysPlantChartDimension/findAllDime3?uuid="+chart_layout_select_id;
			$("#chart_context").load(url);
			$("#chart_group_select_id").val("选择分组").trigger("change");
		}
	});
}

//选择布局
function loadChartThemeSelectSuccess(result){
	var data = [{id:"选择主题",text:"选择主题"}];
	$.each(result,function(index,value){
		data.push({id:value.keyValue,text:value.keyword})
	})
	$('#chartTheme_select_id').select2({
		placeholder: "选择主题",
		tags: true,
	    data:data,
	    width:120
	});
	
	$('#chartTheme_select_id').on('select2:select', function (evt) {
		chartTheme_select_id = evt.params.data.id;
		if(chartTheme_select_id == "选择主题"){
			chartTheme_select_id="";
		}
	});
}

// 新加分组
function submit_add_group(){
	// 如果未选者主题 提示
	if(chartTheme_select_id==""){
		alert("请选择主题")
		return;
	}
	// 如果未选者布局 提示
	if(chart_layout_select_id==""){
		alert("请选择布局")
		return;
	}
	// 新建分组信息
	var params={
		title:$("#add_sysPlantChartDimensionGroup_title").val(),
		theme:chartTheme_select_id,
		layout:chart_layout_select_id,
		createUser:username,
		updateUser:username,
	}
	var url = "/sysPlantChartDimensionGroup/save";
	ajaxPost(url, params, addGroupSuccess);
}

// 分组下拉显示加载
function loadChartGroupSelect(result){
	var data = [{id:"选择分组",text:"选择分组"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.title})
	})
	$("#chart_group_select_id").select2({data:data});
	
}

// 新建分组提交结果后 重载分组信息
function addGroupSuccess(result){
	var url = "/sysPlantChartDimensionGroup/findAll";
	ajaxPost(url, {}, loadChartGroupSelect);
	
	// 关闭 弹窗
	$("#add_group_btn_modal").modal('hide');
	// 分组重新选中默认 
	$("#chart_group_select_id").val(chart_group_select_id==""?"选择分组":chart_group_select_id).trigger("change");
	
}