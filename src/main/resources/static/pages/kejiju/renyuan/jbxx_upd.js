$(function() {
	/**
	 * 下面是进行插件初始化 你只需传入相应的键值对
	 */
	$('#kejiju_renyuan_jbxx_form_id').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	        personId : {/* 键名username和input name值对应 */
		        validators : {
			        notEmpty : {/* 非空提示 */
				        message : '本地唯一标识不能为空'
			        }
		        }
	        },
	        name : {/* 键名username和input name值对应 */
		        validators : {
			        notEmpty : {/* 非空提示 */
				        message : '姓名不能为空'
			        }
		        }
	        },
	        organization : {/* 键名username和input name值对应 */
		        validators : {
			        notEmpty : {/* 非空提示 */
				        message : '单位名称不能为空'
			        }
		        }
	        },
	        postcode : {/* 键名username和input name值对应 */
		        validators : {
	                stringLength : {/* 长度提示 */
	                    max : 6,
	                    message : '用户名长度必须在6之内'
	                }
		        }
	        },
	        mobileTelephone : {/* 键名username和input name值对应 */
		        validators : {
			        notEmpty : {/* 非空提示 */
				        message : '移动电话不能为空'
			        }
		        }
	        },
	        officeTelephone : {/* 键名username和input name值对应 */
		        validators : {
			        notEmpty : {/* 非空提示 */
				        message : '办公电话不能为空'
			        }
		        }
	        },
	        idType : {/* 键名username和input name值对应 */
		        validators : {
			        notEmpty : {/* 非空提示 */
				        message : '证件类型不能为空'
			        },stringLength : {/* 长度提示 */
	                    max : 10,
	                    message : '用户名长度必须在10之内'
	                }
		        }
	        },
	        idNumber : {/* 键名username和input name值对应 */
		        validators : {
			        notEmpty : {/* 非空提示 */
				        message : '证件号码不能为空'
			        }
		        }
	        },
	        researchDirection : {/* 键名username和input name值对应 */
		        validators : {
			        notEmpty : {/* 非空提示 */
				        message : '研究方向不能为空'
			        }
		        }
	        }
	    
	    }
	});
	
	$("#kejiju_renyuan_submit_button").click(function() {
		$('#kejiju_renyuan_jbxx_form_id').data("bootstrapValidator").validate();
		var flag = $('#kejiju_renyuan_jbxx_form_id').data("bootstrapValidator").isValid();
		if (flag) {
			var data = {
			    personId : $("#kejiju_renyuan_jbxx_input_personId").val(),
			    bankAccount : $("#kejiju_renyuan_jbxx_input_bankAccount").val(),
			    bankName : $("#kejiju_renyuan_jbxx_input_bankName").val(),
			    birthdate : $("#kejiju_renyuan_jbxx_input_birthdate").val(),
			    birthplace : $("#kejiju_renyuan_jbxx_input_birthplace").val(),
			    cdc : $("#kejiju_renyuan_jbxx_input_cdc").val(),
			    degree : $("#kejiju_renyuan_jbxx_input_degree").val(),
			    discipline : $("#kejiju_renyuan_jbxx_input_discipline").val(),
			    education : $("#kejiju_renyuan_jbxx_input_education").val(),
			    email : $("#kejiju_renyuan_jbxx_input_email").val(),
			    emergencyContact : $("#kejiju_renyuan_jbxx_input_emergencyContact").val(),
			    emergencyNumber : $("#kejiju_renyuan_jbxx_input_emergencyNumber").val(),
			    ethnicGroup : $("#kejiju_renyuan_jbxx_input_ethnicGroup").val(),
			    fax : $("#kejiju_renyuan_jbxx_input_fax").val(),
			    formerName : $("#kejiju_renyuan_jbxx_input_formerName").val(),
			    gender : $("#kejiju_renyuan_jbxx_input_gender").val(),
			    homeTelephone : $("#kejiju_renyuan_jbxx_input_homeTelephone").val(),
			    honorary : $("#kejiju_renyuan_jbxx_input_honorary").val(),
			    idNumber : $("#kejiju_renyuan_jbxx_input_idNumber").val(),
			    idType : $("#kejiju_renyuan_jbxx_input_idType").val(),
			    industry : $("#kejiju_renyuan_jbxx_input_industry").val(),
			    introduce : $("#kejiju_renyuan_jbxx_input_introduce").val(),
			    microblog : $("#kejiju_renyuan_jbxx_input_microblog").val(),
			    mobileTelephone : $("#kejiju_renyuan_jbxx_input_mobileTelephone").val(),
			    name : $("#kejiju_renyuan_jbxx_input_name").val(),
			    nationality : $("#kejiju_renyuan_jbxx_input_nationality").val(),
			    nativePlace : $("#kejiju_renyuan_jbxx_input_nativePlace").val(),
			    officeTelephone : $("#kejiju_renyuan_jbxx_input_officeTelephone").val(),
			    organization : $("#kejiju_renyuan_jbxx_input_organization").val(),
			    organizationCity : $("#kejiju_renyuan_jbxx_input_organizationCity").val(),
			    organizationProperty : $("#kejiju_renyuan_jbxx_input_organizationProperty").val(),
			    organizationProvince : $("#kejiju_renyuan_jbxx_input_organizationProvince").val(),
			    otherCode : $("#kejiju_renyuan_jbxx_input_otherCode").val(),
			    personUrls : $("#kejiju_renyuan_jbxx_input_personUrls").val(),
			    photoUrl : $("#kejiju_renyuan_jbxx_input_photoUrl").val(),
			    politicalStatus : $("#kejiju_renyuan_jbxx_input_politicalStatus").val(),
			    porfessionalTitle : $("#kejiju_renyuan_jbxx_input_porfessionalTitle").val(),
			    positionLevel : $("#kejiju_renyuan_jbxx_input_positionLevel").val(),
			    positionTitle : $("#kejiju_renyuan_jbxx_input_positionTitle").val(),
			    postalAddress : $("#kejiju_renyuan_jbxx_input_postalAddress").val(),
			    postcode : $("#kejiju_renyuan_jbxx_input_postcode").val(),
			    researchDirection : $("#kejiju_renyuan_jbxx_input_researchDirection").val(),
			    researchType : $("#kejiju_renyuan_jbxx_input_researchType").val(),
			    vocationalQualifications : $("#kejiju_renyuan_jbxx_input_vocationalQualifications").val(),
			    field : $("#kejiju_renyuan_jbxx_input_field").val(),
			    
			    createUser : username,
			};
			console.log(data);
			ajaxPost("/kjryJbxxInfo/save", data, updkejijurenyuanjibenSuccess, 5000, findError);
		}
	});
});

function updkejijurenyuanjibenSuccess(result) {
	$("#kejiju_renyuan_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'renyuan_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('65EC730F7B36A4D057F32B81902D1F82');
	$("#tabContainer").data("tabs").remove('renyuan_add');
}