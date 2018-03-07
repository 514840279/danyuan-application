$(function() {
	$("#kejiju_xiangmu_danwei_submit_button").click(function() {
		var data = {
				uuid : $("#kejiju_xiangmu_dwxx_input_uuid").val(),
				accountName : $("#kejiju_xiangmu_dwxx_input_accountName").val(),
				bankAccount : $("#kejiju_xiangmu_dwxx_input_bankAccount").val(),
				bankName : $("#kejiju_xiangmu_dwxx_input_bankName").val(),
				coopOrganization : $("#kejiju_xiangmu_dwxx_input_coopOrganization").val(),
				coopOrganizationCode : $("#kejiju_xiangmu_dwxx_input_coopOrganizationCode").val(),
				coopOrganizationFax : $("#kejiju_xiangmu_dwxx_input_coopOrganizationFax").val(),
				coopOrganizationId : $("#kejiju_xiangmu_dwxx_input_coopOrganizationId").val(),
				coopOrganizationProperty : $("#kejiju_xiangmu_dwxx_input_coopOrganizationProperty").val(),
				coopOrganizationTelephone : $("#kejiju_xiangmu_dwxx_input_coopOrganizationTelephone").val(),
				coopOrganizationUscc : $("#kejiju_xiangmu_dwxx_input_coopOrganizationUscc").val(),
				mainImpersonalEntity : $("#kejiju_xiangmu_dwxx_input_mainImpersonalEntity").val(),
				mainOrganization : $("#kejiju_xiangmu_dwxx_input_mainOrganization").val(),
				mainOrganizationAddress : $("#kejiju_xiangmu_dwxx_input_mainOrganizationAddress").val(),
				mainOrganizationAdministration : $("#kejiju_xiangmu_dwxx_input_mainOrganizationAdministration").val(),
				mainOrganizationCode : $("#kejiju_xiangmu_dwxx_input_mainOrganizationCode").val(),
				mainOrganizationEmail : $("#kejiju_xiangmu_dwxx_input_mainOrganizationEmail").val(),
				mainOrganizationFax : $("#kejiju_xiangmu_dwxx_input_mainOrganizationFax").val(),
				mainOrganizationLocation : $("#kejiju_xiangmu_dwxx_input_mainOrganizationLocation").val(),
				mainOrganizationPostcode : $("#kejiju_xiangmu_dwxx_input_mainOrganizationPostcode").val(),
				mainOrganizationProperty : $("#kejiju_xiangmu_dwxx_input_mainOrganizationProperty").val(),
				mainOrganizationRecommendUnit : $("#kejiju_xiangmu_dwxx_input_mainOrganizationRecommendUnit").val(),
				mainOrganizationTelephone : $("#kejiju_xiangmu_dwxx_input_mainOrganizationTelephone").val(),
				mainOrganizationUscc : $("#kejiju_xiangmu_dwxx_input_mainOrganizationUscc").val(),
				"xmjbUuid":uuid,
		    createUser:username,
		};
		console.log(data);
		ajaxPost("/kjxmDwxxInfo/save", data, updkejijuxiangmudanweiSuccess, 5000, findError);
	});
});

function updkejijuxiangmudanweiSuccess(result) {
	$("#kejiju_xiangmu_danweixinxi_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'xiangmu_danwei_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('xiangmu_jbxx_datile_upd');
	$("#tabContainer").data("tabs").remove('xiangmu_danwei_add');
	
}