$(function() {
	/**
	 * 下面是进行插件初始化 你只需传入相应的键值对
	 */
	$('#kejiju_chengguo_form_id').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	        resultId : {/* 键名username和input name值对应 */
	            message : '本地唯一标识无效',
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '本地唯一标识不能为空'
	                },
	                stringLength : {/* 长度提示 */
	                    max : 50,
	                    message : '用户名长度必须在50之内'
	                }
	            /* 最后一个没有逗号 */
	            }
	        },
	        projectId : {
	            message : '密码无效',
	            validators : {
	                notEmpty : {
		                message : '所属项目编码不能为空'
	                },
	                stringLength : {
	                    max : 50,
	                    message : '用户名长度必须在50之内'
	                }
	            }
	        },
	        projectName : {
		        validators : {
			        notEmpty : {
				        message : '所属项目名称不能为空'
			        }
		        }
	        },
	        resultType : {
		        validators : {
			        notEmpty : {
				        message : '成果类型不能为空'
			        }
		        }
	        },
	        resultTitle : {
		        validators : {
			        notEmpty : {
				        message : '成果名称不能为空'
			        }
		        }
	        },
	        completedby : {
		        validators : {
			        notEmpty : {
				        message : '成果完成不能为空'
			        }
		        }
	        },
	        completedOrganization : {
		        validators : {
			        notEmpty : {
				        message : '成果完成单位不能为空'
			        }
		        }
	        },
	        completedDate : {
		        validators : {
			        notEmpty : {
				        message : '成果完成时间不能为空'
			        }
		        }
	        }
	    }
	});
	$("#kejiju_chengguo_submit_button").click(function() {
		$('#kejiju_chengguo_form_id').data("bootstrapValidator").validate();
		var flag = $('#kejiju_chengguo_form_id').data("bootstrapValidator").isValid();
		if (flag) {
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
			    industry : $("#kejiju_chengguo_input_industry").val(),
			    createUser : username,
			};
			console.log(data);
			ajaxPost("/kjcgJbxxInfo/save", data, updkejijuchengguoSuccess, 5000, findError);
		}
	});
});

function updkejijuchengguoSuccess(result) {
	$("#kejiju_chengguo_table_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'chengguo_add');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('B3122FB92A5F556AA2D61BBA3F2245A6');
	$("#tabContainer").data("tabs").remove('chengguo_add');
	
}