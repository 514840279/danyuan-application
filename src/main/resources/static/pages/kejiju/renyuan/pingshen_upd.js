$(function() {
	$("#kejiju_renyuan_pingshen_submit_button").click(function() {
		var data = {
		    uuid : $("#kejiju_renyuan_pingshen_input_uuid").val(),
		    endTime : $("#kejiju_renyuan_pingshen_input_endTime").val(),
		    startTime : $("#kejiju_renyuan_pingshen_input_startTime").val(),
		    reviewContent : $("#kejiju_renyuan_pingshen_input_reviewContent").val(),
		    consignor : $("#kejiju_renyuan_pingshen_input_consignor").val(),
		    personId : personId,
		    createUser : username,
		};
		console.log(data);
		ajaxPost("/kjryXspsInfo/save", data, updkejijurenyuanpingshenSuccess, 5000, findError);
	});
});

function updkejijurenyuanpingshenSuccess(result) {
	$("#kejiju_renyuan_xueshupingshen_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'renyuan_pingshen_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('renyuan_jbxx_datile_upd');
	$("#tabContainer").data("tabs").remove('renyuan_pingshen_add');
}