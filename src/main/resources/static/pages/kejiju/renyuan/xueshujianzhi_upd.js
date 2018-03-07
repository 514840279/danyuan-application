$(function() {
	$("#kejiju_renyuan_jianzhi_submit_button").click(function() {
		var data = {
			uuid                  : $("#kejiju_renyuan_jianzhi_input_uuid").val(),
			endTime               : $("#kejiju_renyuan_jianzhi_input_endTime").val(),
			partTimeOrganization  : $("#kejiju_renyuan_jianzhi_input_partTimeOrganization").val(),
			positionTitle         : $("#kejiju_renyuan_jianzhi_input_positionTitle").val(),
			session               : $("#kejiju_renyuan_jianzhi_input_session").val(),
			startTime: $("#kejiju_renyuan_jianzhi_input_startTime").val(),
			personId:personId,
		    createUser:username,
		};
		console.log(data);
		ajaxPost("/kjryXsjzInfo/save", data, updkejijurenyuanjianzhiSuccess, 5000, findError);
	});
});

function updkejijurenyuanjianzhiSuccess(result) {
	$("#kejiju_renyuan_xueshujianzhi_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'renyuan_jianzhi_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('renyuan_jbxx_datile_upd');
	$("#tabContainer").data("tabs").remove('renyuan_jianzhi_add');
}