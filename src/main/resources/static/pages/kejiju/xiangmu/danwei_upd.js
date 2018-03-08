$(function() {
	/**
	 * 下面是进行插件初始化 你只需传入相应的键值对
	 */
	$('#kejiju_xiangmu_danwei_form_id').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
		    mainOrganization : {/* 键名username和input name值对应 */
		        message : '主承担单位无效',
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '主承担单位不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 100,
		                message : '用户名长度必须在100之内'
		            }
		        /* 最后一个没有逗号 */
		        }
		    },coopOrganizationId : {/* 键名username和input name值对应 */
		        message : '主承担单位无效',
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '主承担单位不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 3,
		                message : '用户名长度必须在3之内'
		            }
		        /* 最后一个没有逗号 */
		        }
		    },coopOrganizationProperty : {/* 键名username和input name值对应 */
		        message : '主承担单位无效',
		        validators : {
                    regexp: {
                        regexp: /^[\d]*$/,
                        message: '合作单位性质 必须数字，长度必须在10以内'
                    }
		        /* 最后一个没有逗号 */
		        }
		    }
	    }
	});
	
	$("#kejiju_xiangmu_danwei_submit_button").click(function() {
		$('#kejiju_xiangmu_danwei_form_id').data("bootstrapValidator").validate();
		var flag = $('#kejiju_xiangmu_danwei_form_id').data("bootstrapValidator").isValid();
		if (flag) {
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
			    "xmjbUuid" : uuid,
			    createUser : username,
			};
			ajaxPost("/kjxmDwxxInfo/save", data, updkejijuxiangmudanweiSuccess, 5000, findError);
		}
	});
});

function updkejijuxiangmudanweiSuccess(result) {
	$("#kejiju_xiangmu_danweixinxi_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'xiangmu_danwei_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('xiangmu_jbxx_datile_upd');
	$("#tabContainer").data("tabs").remove('xiangmu_danwei_add');
	
}