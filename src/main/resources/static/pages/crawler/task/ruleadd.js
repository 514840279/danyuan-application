var add_taskRule_status = null;
var add_taskRule_type =null;
$(function() {

	$('#add_taskRule_status').select2({
	    tags: true,
	    data:[{id:0,text:'无效'},{id:1,text:'有效'}]
	});
	add_taskRule_status = taskRule.status;
	$("#add_taskRule_status").val(taskRule.status).trigger("change");
	$('#add_taskRule_status').on('select2:select', function (evt) {
		add_taskRule_status = evt.params.data.id;
	});
	
	$('#add_taskRule_type').select2({
	    tags: true,
	    data:[{id:'Xpath',text:'Xpath'},{id:'JSON',text:'JSON'},{id:'pageNum',text:'pageNum'},{id:'nextPage',text:'nextPage'},{id:'iframe',text:'iframe'}]
	});
	add_taskRule_type = taskRule.type
	$("#add_taskRule_type").val(taskRule.type).trigger("change");
	$('#add_taskRule_type').on('select2:select', function (evt) {
		add_taskRule_type = evt.params.data.id;
	});
	
	
	

});
$('#add_form').bootstrapValidator({
    message : '验证失败消息',
    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
        valid : 'glyphicon glyphicon-ok',
        invalid : 'glyphicon glyphicon-remove',
        validating : 'glyphicon glyphicon-refresh'
    },
    fields : {/* 验证 */
    	name : {/* 键名username和input name值对应 */
            message : '规则无效',
            validators : {
                notEmpty : {/* 非空提示 */
	                message : '规则名称不能为空'
                },
                stringLength : {/* 长度提示 */
                    max : 50,
                    message : '规则长度必须在50之内'
                }
            /* 最后一个没有逗号 */
            }
        }, type : {
	        validators : {
		        notEmpty : {
			        message : '类型不能为空'
		        }
	        }
        }, context : {
	        validators : {
		        notEmpty : {
			        message : '规则不能为空'
		        }
	        }
        }, status : {
	        validators : {
		        notEmpty : {
			        message : '状态不能为空'
		        }
	        }
        }
    }
});

function submit_add_addr(){
	$('#add_form').data("bootstrapValidator").validate();
	var flag = $('#add_form').data("bootstrapValidator").isValid();
	if (flag) {
		taskrule={
				id:{
					id:taskRule.id.id,
					ruleId:taskRule.id.ruleId
				},
				name:$("#add_taskRule_name").val(),
				type:add_taskRule_type,
				context:$("#add_taskRule_context").val(),
				status:add_taskRule_status,
				userName:username
		}
		var url = "/taskRule/save";
		ajaxPost(url, taskrule, addTaskruleSuccess);
	}
}

function addTaskruleSuccess(result){
	addRuleSuccess(result);
	$("#add_config_rule_table").modal("hide");
}

