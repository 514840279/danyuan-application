$(function() {
	$("#kejiju_xiangmu_danwei_submit_button").click(function() {
		var data = {
				uuid : $("#kejiju_xiangmu_renyuan_input_uuid").val(),
				headBirthdate : $("#kejiju_xiangmu_renyuan_input_headBirthdate").val(),
				headDegree : $("#kejiju_xiangmu_renyuan_input_headDegree").val(),
				headEducation : $("#kejiju_xiangmu_renyuan_input_headEducation").val(),
				headEmail                 : $("#kejiju_xiangmu_renyuan_input_headEmail").val(),
				headEthnicGroup           : $("#kejiju_xiangmu_renyuan_input_headEthnicGroup").val(),
				headGender                : $("#kejiju_xiangmu_renyuan_input_headGender").val(),
				headHonorary              : $("#kejiju_xiangmu_renyuan_input_headHonorary").val(),
				headIdNumber              : $("#kejiju_xiangmu_renyuan_input_headIdNumber").val(),
				headIdType                : $("#kejiju_xiangmu_renyuan_input_headIdType").val(),
				headMajor                 : $("#kejiju_xiangmu_renyuan_input_headMajor").val(),
				headMobileTelephone       : $("#kejiju_xiangmu_renyuan_input_headMobileTelephone").val(),
				headName                  : $("#kejiju_xiangmu_renyuan_input_headName").val(),
				headOrganization          : $("#kejiju_xiangmu_renyuan_input_headOrganization").val(),
				headPoliticalStatus       : $("#kejiju_xiangmu_renyuan_input_headPoliticalStatus").val(),
				headPositionLevel         : $("#kejiju_xiangmu_renyuan_input_headPositionLevel").val(),
				headPositionTitle         : $("#kejiju_xiangmu_renyuan_input_headPositionTitle").val(),
				headProfessionalTitle     : $("#kejiju_xiangmu_renyuan_input_headProfessionalTitle").val(),
				headResearchDirection     : $("#kejiju_xiangmu_renyuan_input_headResearchDirection").val(),
				headSchoolName            : $("#kejiju_xiangmu_renyuan_input_headSchoolName").val(),
				headTelephone             : $("#kejiju_xiangmu_renyuan_input_headTelephone").val(),
				participantBirthday       : $("#kejiju_xiangmu_renyuan_input_participantBirthday").val(),
				participantDegree         : $("#kejiju_xiangmu_renyuan_input_participantDegree").val(),
				participantEducation      : $("#kejiju_xiangmu_renyuan_input_participantEducation").val(),
				participantGender         : $("#kejiju_xiangmu_renyuan_input_participantGender").val(),
				participantIdNumber       : $("#kejiju_xiangmu_renyuan_input_participantIdNumber").val(),
				participantIdType         : $("#kejiju_xiangmu_renyuan_input_participantIdType").val(),
				participantMajor          : $("#kejiju_xiangmu_renyuan_input_participantMajor").val(),
				participantName           : $("#kejiju_xiangmu_renyuan_input_participantName").val(),
				participantOrganization   : $("#kejiju_xiangmu_renyuan_input_participantOrganization").val(),
				participantPositionLevel  : $("#kejiju_xiangmu_renyuan_input_participantPositionLevel").val(),
				participantProfessionTitle: $("#kejiju_xiangmu_renyuan_input_participantProfessionTitle").val(),
				participantResearchDirection : $("#kejiju_xiangmu_renyuan_input_participantResearchDirection").val(),
				participantTitle          : $("#kejiju_xiangmu_renyuan_input_participantTitle").val(),
				participantWorkRank       : $("#kejiju_xiangmu_renyuan_input_participantWorkRank").val(),
				participantWorkingTime    : $("#kejiju_xiangmu_renyuan_input_participantWorkingTime").val(),
				role                      : $("#kejiju_xiangmu_renyuan_input_role").val(),
				task                      : $("#kejiju_xiangmu_renyuan_input_task").val(),
				"xmjbUuid":uuid,
		    createUser:username,
		};
		console.log(data);
		ajaxPost("/kjxmRyxxInfo/save", data, updkejijuxiangmudanweiSuccess, 5000, findError);
	});
});

function updkejijuxiangmudanweiSuccess(result) {
	$("#kejiju_xiangmu_xiangmurenyuan_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'xiangmu_renyuan_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('xiangmu_jbxx_datile_upd');
	$("#tabContainer").data("tabs").remove('xiangmu_renyuan_add');
	
}