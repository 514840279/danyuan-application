$(function() {
	$("#kejiju_chengguo_submit_button").click(function() {
		var data = {
		    resultId : $("#kejiju_chengguo_input_resultId").val(),
		    projectName : $("#kejiju_chengguo_input_projectName").val(),
		    resultType : $("#kejiju_chengguo_input_resultType").val(),
		    resultTitle : $("#kejiju_chengguo_input_resultTitle").val(),
		    keyword : $("#kejiju_chengguo_input_keyword").val(),
		    resultAbstract : $("#kejiju_chengguo_input_resultAbstract").val(),
		    resultLinks : $("#kejiju_chengguo_input_resultLinks").val(),
		    completedby : $("#kejiju_chengguo_input_completedby").val(),
		    completedOrganization : $("#kejiju_chengguo_input_completedOrganization").val(),
		    completedDate : $("#kejiju_chengguo_input_completedDate").val(),
		    awards : $("#kejiju_chengguo_input_awards").val(),
		    cdc : $("#kejiju_chengguo_input_cdc").val(),
		    discipline : $("#kejiju_chengguo_input_discipline").val(),
		    otherCode : $("#kejiju_chengguo_input_otherCode").val(),
		    projectId : $("#kejiju_chengguo_input_projectId").val(),
		    createUser:username,
		};
		console.log(data);
		ajaxPost("/kjcgJbxxInfo/save", data, updkejijuchengguoSuccess, 5000, findError);
	});
});

function updkejijuchengguoSuccess(result) {
	$("#kejiju_chengguo_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'chengguo_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('B3122FB92A5F556AA2D61BBA3F2245A6');
	$("#tabContainer").data("tabs").remove('chengguo_add');
	
}