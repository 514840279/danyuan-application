$(function() {
	$("#kejiju_chengguo_submit_button").click(function() {
		var data = {
				uuid : $("#kejiju_xiangmu_jbxx_input_uuid").val(),
				approvalYear : $("#kejiju_xiangmu_jbxx_input_approvalYear").val(),
				cdc : $("#kejiju_xiangmu_jbxx_input_cdc").val(),
				cnKeyword : $("#kejiju_xiangmu_jbxx_input_cnKeyword").val(),
				competentDepartment : $("#kejiju_xiangmu_jbxx_input_competentDepartment").val(),
				discipline : $("#kejiju_xiangmu_jbxx_input_discipline").val(),
				email : $("#kejiju_xiangmu_jbxx_input_email").val(),
				enKeyword : $("#kejiju_xiangmu_jbxx_input_enKeyword").val(),
				expectedIndex : $("#kejiju_xiangmu_jbxx_input_expectedIndex").val(),
				govemmentFund : $("#kejiju_xiangmu_jbxx_input_govemmentFund").val(),
				industry : $("#kejiju_xiangmu_jbxx_input_industry").val(),
				localFund : $("#kejiju_xiangmu_jbxx_input_localFund").val(),
				name : $("#kejiju_xiangmu_jbxx_input_name").val(),
				otherFund : $("#kejiju_xiangmu_jbxx_input_otherFund").val(),
				otherCode : $("#kejiju_xiangmu_jbxx_input_otherCode").val(),
				planAbstract : $("#kejiju_xiangmu_jbxx_input_planAbstract").val(),
				planId : $("#kejiju_xiangmu_jbxx_input_planId").val(),
				planName : $("#kejiju_xiangmu_jbxx_input_planName").val(),
				planUrl : $("#kejiju_xiangmu_jbxx_input_planUrl").val(),
				porjectLinks : $("#kejiju_xiangmu_jbxx_input_porjectLinks").val(),
				projectAbstract : $("#kejiju_xiangmu_jbxx_input_otherCode").val(),
				projectActualEndtime : $("#kejiju_xiangmu_jbxx_input_projectActualEndtime").val(),
				projectActualStartTime : $("#kejiju_xiangmu_jbxx_input_projectActualStartTime").val(),
				projectDomain : $("#kejiju_xiangmu_jbxx_input_projectDomain").val(),
				projectDomainId : $("#kejiju_xiangmu_jbxx_input_projectDomainId").val(),
				projectId : $("#kejiju_xiangmu_jbxx_input_projectId").val(),
				projectName : $("#kejiju_xiangmu_jbxx_input_projectName").val(),
				projectPhase : $("#kejiju_xiangmu_jbxx_input_projectPhase").val(),
				projectPlanEndtime : $("#kejiju_xiangmu_jbxx_input_projectPlanEndtime").val(),
				projectPlanStartTime : $("#kejiju_xiangmu_jbxx_input_projectPlanStartTime").val(),
				projectType : $("#kejiju_xiangmu_jbxx_input_projectType").val(),
				provincialFund : $("#kejiju_xiangmu_jbxx_input_provincialFund").val(),
				region : $("#kejiju_xiangmu_jbxx_input_region").val(),
				researchContent : $("#kejiju_xiangmu_jbxx_input_researchContent").val(),
				researchTarget : $("#kejiju_xiangmu_jbxx_input_researchTarget").val(),
				selfFund : $("#kejiju_xiangmu_jbxx_input_selfFund").val(),
				telephone : $("#kejiju_xiangmu_jbxx_input_telephone").val(),
				totalFund : $("#kejiju_xiangmu_jbxx_input_totalFund").val(),
		    createUser:username,
		};
		console.log(data);
		ajaxPost("/kjxmJbxxInfo/save", data, updkejijuxiangmujibenSuccess, 5000, findError);
	});
});

function updkejijuxiangmujibenSuccess(result) {
	$("#kejiju_xiangmu_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'xiangmu_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('254DD0B66C981B0100796E1C72C5D677');
	$("#tabContainer").data("tabs").remove('xiangmu_add');
	
}