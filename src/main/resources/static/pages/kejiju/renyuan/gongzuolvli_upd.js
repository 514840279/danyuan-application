$(function() {
	$("#kejiju_renyuan_lvli_submit_button").click(function() {
		var data = {
			uuid                  : $("#kejiju_renyuan_lvli_input_uuid").val(),
			country               : $("#kejiju_renyuan_lvli_input_country").val(),
			endTime               : $("#kejiju_renyuan_lvli_input_endTime").val(),
			organization          : $("#kejiju_renyuan_lvli_input_organization").val(),
			organizationCode      : $("#kejiju_renyuan_lvli_input_organizationCode").val(),
			positionLevel         : $("#kejiju_renyuan_lvli_input_positionLevel").val(),
			positionTitle         : $("#kejiju_renyuan_lvli_input_positionTitle").val(),
			professionalTitle     : $("#kejiju_renyuan_lvli_input_professionalTitle").val(),
			researchContent       : $("#kejiju_renyuan_lvli_input_researchContent").val(),
			researchDirection     : $("#kejiju_renyuan_lvli_input_researchDirection").val(),
			researchType          : $("#kejiju_renyuan_lvli_input_researchType").val(),
			startTime             : $("#kejiju_renyuan_lvli_input_startTime").val(),
			unifiedSocialCreditCode: $("#kejiju_renyuan_lvli_input_unifiedSocialCreditCode").val(),
			personId:personId,
		    createUser:username,
		};
		console.log(data);
		ajaxPost("/kjryGzllInfo/save", data, updkejijurenyuanlvliSuccess, 5000, findError);
	});
});

function updkejijurenyuanlvliSuccess(result) {
	$("#kejiju_renyuan_gongzuolvli_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'renyuan_lvli_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('renyuan_jbxx_datile_upd');
	$("#tabContainer").data("tabs").remove('renyuan_lvli_add');
}