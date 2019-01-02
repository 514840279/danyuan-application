var add_sysPlantLableDic=null;


function loadSelectclear(result){
	console.log(result)
	if(result.length==1){
		$("#show_parentid").text(result[0].word).css({"display":""});
		add_sysPlantLableDic={id:result[0].uuid,text:result[0].word,parentId:result[0].parentId};
		loadSelect2(result[0].uuid);
	}else if(result.length>1){
		$("#show_parentid").css({"display":"none"});
		add_sysPlantLableDic=null;
		loadSelect2(null);
	}else{
		$("#show_parentid").css({"display":"none"});
		add_sysPlantLableDic=null;
		loadSelect2(null);
	}
}


function loadSelect2(parentId){
	
	var data = $('#plant_addr_datagrid').bootstrapTable('getAllSelections')[0];
	params={
		parentId:parentId,
		typeUuid:data.uuid
	}
	
	var url = "/sysPlantLableDic/findAllByParentId";
	ajaxPost(url, params, loadSelect);
}

var selectdata = [{id:'',text:'请选择'}];
function loadSelect(result){
	var showtext = '请选择';
	selectdata = [{id:'',text:'请选择'}]
	$.each(result,function(index,value){
		if(sysPlantLableDic.uuid!=null&&sysPlantLableDic.parentId!=null&&value.parentId!=null){
			if(value.uuid!=sysPlantLableDic.uuid){
				selectdata.push({id:value.uuid,text:value.word,parentId:value.parentId});
			}
		}else{
			selectdata.push({id:value.uuid,text:value.word,parentId:value.parentId});
		}
	})
	$('#add_sysPlantLableDic_parentId').empty();
	$('#add_sysPlantLableDic_parentId').select2({
	    tags: true,
	    placeholder: showtext,
	    data:selectdata,
	    allowClear: true
	})
	
}


function submit_add_addr(){
	var data = $('#plant_addr_datagrid').bootstrapTable('getAllSelections')[0];
	params={
		uuid:sysPlantLableDic.uuid,
		word:$("#add_sysPlantLableDic_word").val(),
		keyOrder:$("#add_sysPlantLableDic_keyOrder").val(),
		description:$("#add_sysPlantLableDic_description").val(),
		parentId:add_sysPlantLableDic==null?null:add_sysPlantLableDic.id,
		typeUuid:data.uuid
	}
	var url = "/sysPlantLableDic/save";
	ajaxPost(url, params, addSuccess);
}

function addSuccess(result){
	$("#add_lable").modal("hide");
	$("#plant_addr_dic_datagrid").bootstrapTable('refresh');
}
$(function(){
	$('#add_sysPlantLableDic_parentId').select2({
	    tags: true,
	    placeholder: "请选择",
	    allowClear: true
	}).on('select2:select', function (evt) {
		add_sysPlantLableDic = evt.params.data;
		$("#show_parentid").text(add_sysPlantLableDic.text).css({"display":""});
		loadSelect2(add_sysPlantLableDic.id)
//	}).on('select2:unselect',function(evt){
//		var url = "/sysPlantLableDic/findOne";
//		var params={
//				uuid:add_sysPlantLableDic.parentId,
//		}
//		ajaxPost(url, params, clearloadSelect);
		
	});
	
	
	$("#show_parentid").click(function(){
		
		var data = $('#plant_addr_datagrid').bootstrapTable('getAllSelections')[0];
		var url = "/sysPlantLableDic/findAll";
		var params={
			uuid:add_sysPlantLableDic.parentId,
			typeUuid:data.uuid
		}
		ajaxPost(url, params, loadSelectclear);
	})
	
	
	
	if(sysPlantLableDic.uuid!=null){
		add_sysPlantLableDic={id:sysPlantLableDic.uuid,text:sysPlantLableDic.word,parentId:sysPlantLableDic.parentId};
		var data = $('#plant_addr_datagrid').bootstrapTable('getAllSelections')[0];
		var url = "/sysPlantLableDic/findAll";
		var params={
			uuid:add_sysPlantLableDic.parentId,
			typeUuid:data.uuid
		}
		ajaxPost(url, params, loadSelectclear);
	}else{
		loadSelect2(null);
	}
})