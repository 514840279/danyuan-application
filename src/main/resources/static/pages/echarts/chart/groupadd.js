
function submit_add_addr(){
	chartFormValidator()
	$('#chart_dems_form').data("bootstrapValidator").validate();
	var flag = $('#chart_dems_form').data("bootstrapValidator").isValid();
	if (flag) {
		var params={
				uuid:sysPlantChartDimensionGroup.uuid,
				title:$("#add_sysPlantChartDimension_title").val(),
				createUser:username,
				updateUser:username,
		}
		var url = "/sysPlantChartDimensionGroup/save";
		ajaxPost(url, params, addSuccess);
	}
	
	
}

function addSuccess(result){
	$('#add_config_table').modal('hide');
	$('#dbm_demgroup_datagrid').bootstrapTable('refresh');
}
