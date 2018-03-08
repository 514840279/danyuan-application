$(function() {
	/**
	 * 下面是进行插件初始化 你只需传入相应的键值对
	 */
	$('#kejiju_xiangmu_jiben_form_id').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	region : {/* 键名username和input name值对应 */
		        message : '省市地区无效',
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '省市地区不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 20,
		                message : '省市地区长度必须在20之内'
		            }
		        }
		    },planId : {/* 键名username和input name值对应 */
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '科技计划编码不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 50,
		                message : '科技计划编码长度必须在50之内'
		            }
		        /* 最后一个没有逗号 */
		        }
		    },planName : {/* 键名username和input name值对应 */
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '科技计划名称不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 100,
		                message : '科技计划名称长度必须在100之内'
		            }
		        /* 最后一个没有逗号 */
		        }
		    },projectId : {/* 键名username和input name值对应 */
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '项目编码不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 100,
		                message : '项目编码长度必须在100之内'
		            }
		        /* 最后一个没有逗号 */
		        }
		    },projectName : {/* 键名username和input name值对应 */
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '项目名称不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 100,
		                message : '项目名称长度必须在100之内'
		            }
		        /* 最后一个没有逗号 */
		        }
		    },approvalYear : {/* 键名username和input name值对应 */
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '立项年度不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 4,
		                message : '立项年度长度必须在4之内'
		            }
		        /* 最后一个没有逗号 */
		        }
		    },projectPlanStartTime : {/* 键名username和input name值对应 */
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '项目计划起始时间不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 10,
		                message : '项目计划起始时间长度必须在10之内'
		            }
		        /* 最后一个没有逗号 */
		        }
		    },projectPlanEndtime : {/* 键名username和input name值对应 */
		        validators : {
		            notEmpty : {/* 非空提示 */
			            message : '项目计划结束时间不能为空'
		            },
		            stringLength : {/* 长度提示 */
		                max : 10,
		                message : '项目计划结束时间长度必须在10之内'
		            }
		        /* 最后一个没有逗号 */
		        }
		    },totalFund : {/* 键名username和input name值对应 */
		        validators : {
		            stringLength : {/* 长度提示 */
		                max : 30,
		                message : '项目总经费长度必须在30之内'
		            },
		        	regexp: {
                        regexp: /^[\d]*$/,
                        message: '项目总经费 必须数字，长度必须在30以内'
                    }
		        /* 最后一个没有逗号 */
		        }
		    },govemmentFund : {/* 键名username和input name值对应 */
		        validators : {
		            stringLength : {/* 长度提示 */
		                max : 30,
		                message : '中央拨付经费长度必须在30之内'
		            },
		        	regexp: {
                        regexp: /^[\d]*$/,
                        message: ' 中央拨付经费 必须数字，长度必须在30以内'
                    }
		        /* 最后一个没有逗号 */
		        }
		    },provincialFund : {/* 键名username和input name值对应 */
		        validators : {
		            stringLength : {/* 长度提示 */
		                max : 30,
		                message : '省级拨付经费长度必须在30之内'
		            },
		        	regexp: {
                        regexp: /^[\d]*$/,
                        message: ' 省级拨付经费 必须数字，长度必须在30以内'
                    }
		        /* 最后一个没有逗号 */
		        }
		    },localFund : {/* 键名username和input name值对应 */
		        validators : {
		            stringLength : {/* 长度提示 */
		                max : 30,
		                message : '地方配套经费长度必须在30之内'
		            },
		        	regexp: {
                        regexp: /^[\d]*$/,
                        message: ' 地方配套经费 必须数字，长度必须在30以内'
                    }
		        /* 最后一个没有逗号 */
		        }
		    },selfFund : {/* 键名username和input name值对应 */
		        validators : {
		            stringLength : {/* 长度提示 */
		                max : 30,
		                message : '单位自筹经费长度必须在30之内'
		            },
		        	regexp: {
                        regexp: /^[\d]*$/,
                        message: ' 单位自筹经费 必须数字，长度必须在30以内'
                    }
		        /* 最后一个没有逗号 */
		        }
		    },otherFund : {/* 键名username和input name值对应 */
		        validators : {
		            stringLength : {/* 长度提示 */
		                max : 30,
		                message : '其他来源经费长度必须在30之内'
		            },
		        	regexp: {
                        regexp: /^[\d]*$/,
                        message: ' 其他来源经费 必须数字，长度必须在30以内'
                    }
		        /* 最后一个没有逗号 */
		        }
		    }
	    
	    }
	});
	
	$("#kejiju_xiangmu_submit_button").click(function() {
		$('#kejiju_xiangmu_jiben_form_id').data("bootstrapValidator").validate();
		var flag = $('#kejiju_xiangmu_jiben_form_id').data("bootstrapValidator").isValid();
		if (flag) {
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
			    projectAbstract : $("#kejiju_xiangmu_jbxx_input_projectAbstract").val(),
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
			    
			    createUser : username,
			};
			console.log(data);
			ajaxPost("/kjxmJbxxInfo/save", data, updkejijuxiangmujibenSuccess, 5000, findError);
		}
	});
});

function updkejijuxiangmujibenSuccess(result) {
	$("#kejiju_xiangmu_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'xiangmu_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('254DD0B66C981B0100796E1C72C5D677');
	$("#tabContainer").data("tabs").remove('xiangmu_add');
	
}