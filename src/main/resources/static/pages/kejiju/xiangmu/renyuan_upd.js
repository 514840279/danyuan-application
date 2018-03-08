$(function() {
	/**
	 * 下面是进行插件初始化 你只需传入相应的键值对
	 */
	$('#kejiju_xiangmu_renyuan_form_id').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	headName : {/* 键名username和input name值对应 */
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '负责人姓名不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 50,
		                message : '负责人姓名长度必须在50之内'
		            }
		        }
		    },headTelephone : {/* 键名username和input name值对应 */
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '负责人办公电话不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 50,
		                message : '负责人办公电话长度必须在50之内'
		            }
		        }
		    },participantWorkRank : {/* 键名username和input name值对应 */
		        validators : {
		            stringLength : {/* 长度提示 */
		                max : 3,
		                message : '负责人办公电话长度必须在3之内'
		            }
		        }
		    },participantWorkingTime : {/* 键名username和input name值对应 */
		        validators : {
		        	stringLength : {/* 长度提示 */
		                max : 20,
		                message : '参加人工作时间长度必须在20之内'
		            },
		        	regexp: {
                        regexp: /^[\d]*$/,
                        message: '参加人工作时间 必须数字，长度必须在20以内'
                    }
		        }
		    }
	    }
	});
	
	$("#kejiju_xiangmu_danwei_submit_button").click(function() {
		$('#kejiju_xiangmu_renyuan_form_id').data("bootstrapValidator").validate();
		var flag = $('#kejiju_xiangmu_renyuan_form_id').data("bootstrapValidator").isValid();
		if (flag) {
			var data = {
			    uuid : $("#kejiju_xiangmu_renyuan_input_uuid").val(),
			    headBirthdate : $("#kejiju_xiangmu_renyuan_input_headBirthdate").val(),
			    headDegree : $("#kejiju_xiangmu_renyuan_input_headDegree").val(),
			    headEducation : $("#kejiju_xiangmu_renyuan_input_headEducation").val(),
			    headEmail : $("#kejiju_xiangmu_renyuan_input_headEmail").val(),
			    headEthnicGroup : $("#kejiju_xiangmu_renyuan_input_headEthnicGroup").val(),
			    headGender : $("#kejiju_xiangmu_renyuan_input_headGender").val(),
			    headHonorary : $("#kejiju_xiangmu_renyuan_input_headHonorary").val(),
			    headIdNumber : $("#kejiju_xiangmu_renyuan_input_headIdNumber").val(),
			    headIdType : $("#kejiju_xiangmu_renyuan_input_headIdType").val(),
			    headMajor : $("#kejiju_xiangmu_renyuan_input_headMajor").val(),
			    headMobileTelephone : $("#kejiju_xiangmu_renyuan_input_headMobileTelephone").val(),
			    headName : $("#kejiju_xiangmu_renyuan_input_headName").val(),
			    headOrganization : $("#kejiju_xiangmu_renyuan_input_headOrganization").val(),
			    headPoliticalStatus : $("#kejiju_xiangmu_renyuan_input_headPoliticalStatus").val(),
			    headPositionLevel : $("#kejiju_xiangmu_renyuan_input_headPositionLevel").val(),
			    headPositionTitle : $("#kejiju_xiangmu_renyuan_input_headPositionTitle").val(),
			    headProfessionalTitle : $("#kejiju_xiangmu_renyuan_input_headProfessionalTitle").val(),
			    headResearchDirection : $("#kejiju_xiangmu_renyuan_input_headResearchDirection").val(),
			    headSchoolName : $("#kejiju_xiangmu_renyuan_input_headSchoolName").val(),
			    headTelephone : $("#kejiju_xiangmu_renyuan_input_headTelephone").val(),
			    participantBirthday : $("#kejiju_xiangmu_renyuan_input_participantBirthday").val(),
			    participantDegree : $("#kejiju_xiangmu_renyuan_input_participantDegree").val(),
			    participantEducation : $("#kejiju_xiangmu_renyuan_input_participantEducation").val(),
			    participantGender : $("#kejiju_xiangmu_renyuan_input_participantGender").val(),
			    participantIdNumber : $("#kejiju_xiangmu_renyuan_input_participantIdNumber").val(),
			    participantIdType : $("#kejiju_xiangmu_renyuan_input_participantIdType").val(),
			    participantMajor : $("#kejiju_xiangmu_renyuan_input_participantMajor").val(),
			    participantName : $("#kejiju_xiangmu_renyuan_input_participantName").val(),
			    participantOrganization : $("#kejiju_xiangmu_renyuan_input_participantOrganization").val(),
			    participantPositionLevel : $("#kejiju_xiangmu_renyuan_input_participantPositionLevel").val(),
			    participantProfessionTitle : $("#kejiju_xiangmu_renyuan_input_participantProfessionTitle").val(),
			    participantResearchDirection : $("#kejiju_xiangmu_renyuan_input_participantResearchDirection").val(),
			    participantTitle : $("#kejiju_xiangmu_renyuan_input_participantTitle").val(),
			    participantWorkRank : $("#kejiju_xiangmu_renyuan_input_participantWorkRank").val(),
			    participantWorkingTime : $("#kejiju_xiangmu_renyuan_input_participantWorkingTime").val(),
			    role : $("#kejiju_xiangmu_renyuan_input_role").val(),
			    task : $("#kejiju_xiangmu_renyuan_input_task").val(),
			    "xmjbUuid" : uuid,
			    createUser : username,
			};
			console.log(data);
			ajaxPost("/kjxmRyxxInfo/save", data, updkejijuxiangmudanweiSuccess, 5000, findError);
		}
	});
});

function updkejijuxiangmudanweiSuccess(result) {
	$("#kejiju_xiangmu_xiangmurenyuan_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'xiangmu_renyuan_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('xiangmu_jbxx_datile_upd');
	$("#tabContainer").data("tabs").remove('xiangmu_renyuan_add');
	
}