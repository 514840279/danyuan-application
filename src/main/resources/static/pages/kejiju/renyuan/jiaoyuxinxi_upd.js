$(function() {
	$("#kejiju_renyuan_jiaoyu_submit_button").click(function() {
		var data = {
			uuid           : $("#kejiju_renyuan_jiaoyu_input_uuid").val(),
			country        : $("#kejiju_renyuan_jiaoyu_input_country").val(),
			degree         : $("#kejiju_renyuan_jiaoyu_input_degree").val(),
			education      : $("#kejiju_renyuan_jiaoyu_input_education").val(),
			endTime        : $("#kejiju_renyuan_jiaoyu_input_endTime").val(),
			major          : $("#kejiju_renyuan_jiaoyu_input_major").val(),
			schoolName     : $("#kejiju_renyuan_jiaoyu_input_schoolName").val(),
			startTime      : $("#kejiju_renyuan_jiaoyu_input_startTime").val(),
			teacher        : $("#kejiju_renyuan_jiaoyu_input_teacher").val(),
			training       : $("#kejiju_renyuan_jiaoyu_input_training").val(),
			universityCode : $("#kejiju_renyuan_jiaoyu_input_universityCode").val(),
			universityUscc : $("#kejiju_renyuan_jiaoyu_input_universityUscc").val(),
			personId:personId,
		    createUser:username,
		};
		console.log(data);
		ajaxPost("/kjryJyxxInfo/save", data, updkejijurenyuanjiaoyuSuccess, 5000, findError);
	});
});

function updkejijurenyuanjiaoyuSuccess(result) {
	$("#kejiju_renyuan_jiaoyuxinxi_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'keji_renyuan_jiaoyu_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('renyuan_jbxx_datile_upd');
	$("#tabContainer").data("tabs").remove('keji_renyuan_jiaoyu_add');
}