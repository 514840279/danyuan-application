
$(function() {
	init();

});
var add_ruler_process=null;
var add_ruler_colum_parentUuid=null;
function init(){
	var url ="/sysDicName/findkeyList";
	ajaxPost(url,{code:"crawler_ruler_cloumn_type"},loadProcess)
	
	$("#submit_add_ruler_id").bind("click",function(){
		submit_add_ruler();
	})
	
	var rows = $('#crawler_rule_group_config_table_datagrid').bootstrapTable('getAllSelections');
	var url ="/sysCrawlerRulerColumInfo/findParent";
	ajaxPost(url,rows[0],loadParentUuid)
	
	
}

function loadParentUuid(result){
	data=[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.columName});
	})
	
	$('#add_ruler_colum_parentUuid').select2({
	    tags: true,
	    data:data
	});
	$('#add_ruler_colum_parentUuid').on('select2:select', function (evt) {
		add_ruler_colum_parentUuid=evt.params.data.id;
	});
}

function loadProcess(result){
	data=[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.keyValue,text:value.keyword});
	})
	
	$('#add_ruler_process').select2({
	    tags: true,
	    data:data
	});
	$('#add_ruler_process').on('select2:select', function (evt) {
		add_ruler_process = evt.params.data.id;
		switch(add_ruler_process){
			case('lxml'):
			case('none'):
			case('dict'):
			case('rdict'):
			case('arrayToString'):
				$("#add_ruler_param_start_id").css({"display":"none"});
				$("#add_ruler_param_end_id").css({"display":"none"});
				$("#add_ruler_param_str_id").css({"display":"none"});
				$("#add_ruler_param_new_id").css({"display":"none"});
				break;
			case("strSub"):
				$("#add_ruler_param_start_id").css({"display":""});
				$("#add_ruler_param_end_id").css({"display":""});
				$("#add_ruler_param_str_id").css({"display":"none"});
				$("#add_ruler_param_new_id").css({"display":"none"});
				break;
			case("strSplit"):
			case("strAppendAfter"):
			case("strAppendbefor"):
				$("#add_ruler_param_start_id").css({"display":"none"});
				$("#add_ruler_param_end_id").css({"display":"none"});
				$("#add_ruler_param_str_id").css({"display":""});
				$("#add_ruler_param_new_id").css({"display":"none"});
				break;
			case("strReplace"):
				$("#add_ruler_param_start_id").css({"display":"none"});
				$("#add_ruler_param_end_id").css({"display":"none"});
				$("#add_ruler_param_str_id").css({"display":""});
				$("#add_ruler_param_new_id").css({"display":""});
				break;
			case("arraySingle"):
				$("#add_ruler_param_start_id").css({"display":""});
				$("#add_ruler_param_end_id").css({"display":"none"});
				$("#add_ruler_param_str_id").css({"display":"none"});
				$("#add_ruler_param_new_id").css({"display":"none"});
				break;
			case("listItem"):
			case("nextPage"):
			case("subPage"):
				break;
			default:
				add_ruler_process=null;
				return;
		}
	});
}


function submit_add_ruler(){
	var rows = $('#crawler_rule_group_config_table_datagrid').bootstrapTable("getAllSelections");
	if(rows.length==1){
		var param={
			rulerUuid:rows[0].uuid,
			columName:$("#add_ruler_name").val(),
			ruler:$("#add_ruler_xpath").val(),
			type:add_ruler_process,
			parentUuid:add_ruler_colum_parentUuid,
			start:$("#add_ruler_param_start").val(),
			end:$("#add_ruler_param_end").val(),
			param:$("#add_ruler_param_str").val(),
			paramNew:$("#add_ruler_param_new").val()
		}
		
		var url = "/sysCrawlerRulerColumInfo/save";
		ajaxPost(url, param, successAddRulerSuccess);
		
	}else{
		alert("需要选择一个组")
	}
}

function successAddRulerSuccess(result){
	$('#crawler_rule_config_table_datagrid').bootstrapTable('refresh');
	$("#add_rule_config_table").modal("hide");
}










