$(function(){
	var url = "/sysPlantChartDimensionGroup/findAll";
	var param={};
	ajaxPost(url, param, loadGroupSelectSuccess, 5000, findError);
})

var change_sysPlantChartDimension_groupUuid = null;

function loadGroupSelectSuccess(result){
	var data=[{id:'0',text:'请选择'}]
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.title})
	})
	$('#change_sysPlantChartDimension_groupUuid').select2({
//		placeholder: "请选择",
	    tags: true,
	    data:data
	});
	change_sysPlantChartDimension_groupUuid = groupUuid;
	$("#change_sysPlantChartDimension_groupUuid").val(groupUuid).trigger("change");
	$('#change_sysPlantChartDimension_groupUuid').on('select2:select', function (evt) {
		change_sysPlantChartDimension_groupUuid = evt.params.data.id;
	});
}

function submit_change(){
	var param = {
			uuid:demUuid,
			groupUuid:change_sysPlantChartDimension_groupUuid
	}
	var url = "/sysPlantChartDimension/changeGroup";
	ajaxPost(url, param, changegroupSuccess, 5000, findError);
}

function changegroupSuccess(result){
	if(groupUuid != change_sysPlantChartDimension_groupUuid){
		$('[title="'+demUuid+'"]').parent().parent().parent().remove();
	}
	$("#add_config_table").modal('hide');
}

