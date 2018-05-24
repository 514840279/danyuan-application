var add_task_appendixStatus = null;
var add_task_executeType = null;
var add_task_postType = null;
var add_task_timingStart = null;
$(function() {

	$('#add_task_appendixStatus').select2({
	    tags: true,
	    data:[{id:'0',text:'否'},{id:'1',text:'是'}]
	});
	add_task_appendixStatus = task.appendixStatus;
	$("#add_task_appendixStatus").val(task.appendixStatus).trigger("change");
	$('#add_task_appendixStatus').on('select2:select', function (evt) {
		add_task_appendixStatus = evt.params.data.id;
	});
	
	$('#add_task_executeType').select2({
	    tags: true,
	    data:[{id:'1',text:'每天'},{id:'2',text:'每2天'},{id:'3',text:'每3天'},{id:'4',text:'每4天'},{id:'5',text:'每5天'},{id:'10',text:'每10天'},{id:'15',text:'每15天'},{id:'20',text:'每20天'},{id:'30',text:'每30天'}]
	});
	add_task_executeType = task.executeType;
	$("#add_task_executeType").val(task.executeType).trigger("change");
	$('#add_task_executeType').on('select2:select', function (evt) {
		add_task_executeType = evt.params.data.id;
	});
	
	$('#add_task_postType').select2({
	    tags: true,
	    data:[{id:'GET',text:'GET'},{id:'POST',text:'POST'}]
	});
	add_task_postType =task.postType;
	$("#add_task_postType").val(task.postType).trigger("change");
	$('#add_task_postType').on('select2:select', function (evt) {
		add_task_postType = evt.params.data.id;
	});
	
	$('#add_task_timingStart').select2({
	    tags: true,
	    data:[{id:0,text:'否'},{id:1,text:'是'}]
	});
	 add_task_timingStart = task.timingStart;
	$("#add_task_timingStart").val(task.timingStart).trigger("change");
	if(task.timingStart == 1){
		$("#showTiming").css({"display":""})
	}else{
		$("#showTiming").css({"display":"none"})
	}
	$('#add_task_timingStart').on('select2:select', function (evt) {
		add_task_timingStart = evt.params.data.id;
		if(add_task_timingStart == 1){
			$("#showTiming").css({"display":""})
		}else{
			$("#showTiming").css({"display":"none"})
		}
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
    	url : {/* 键名username和input name值对应 */
            message : '网站地址无效',
            validators : {
                notEmpty : {/* 非空提示 */
	                message : '网站地址不能为空'
                } ,
//                uri: {
//			        message: '必须是网站格式'
//			    }
            }
        }, taskName : {
	        validators : {
		        notEmpty : {
			        message : '名称不能为空'
		        }
	        }
        }, appendixStatus : {
	        validators : {
		        notEmpty : {
			        message : '附件不能为空'
		        }
	        }
        }, timingStart : {
	        validators : {
		        notEmpty : {
			        message : '是否定时执行不能为空'
		        }
	        }
        }, threadNumber : {
	        validators : {
		        notEmpty : {
			        message : '线程数不能为空'
		        },
		        numeric:{
		        	min:1,
		        	max:20,
		        	message : '线程数必须是数字型的'
		        }
	        }
//        },characterSet:{
//        	validators : {
//        		 notEmpty : {
//     		        message : '字符集不能为空'
//     	        }
//	        }
        },postType:{
        	validators : {
       		 notEmpty : {
    		        message : '请求方式不能为空'
    	        }
	        }
       }
    }
});

function submit_add_addr(){
	$('#add_form').data("bootstrapValidator").validate();
	var flag = $('#add_form').data("bootstrapValidator").isValid();
	if (flag) {
		task={
				id:task.id,
				url:$("#add_task_url").val(),
				taskName:$("#add_task_taskName").val(),
				appendixStatus:add_task_appendixStatus,
				executeType:add_task_executeType,
				threadNumber:$("#add_task_threadNumber").val(),
				executeTime:$("#add_task_executeTime").val(),
				status:task.status,
				postType:add_task_postType,
				postData:$("#add_task_postData").val(),
				head:$("#add_task_head").val(),
				timingStart:add_task_timingStart,
				characterSet:$("#add_task_characterSet").val(),
				userName:username
		}
		var url = "/task/save";
		ajaxPost(url, task, addTaskSuccess);
	}
}

function addTaskSuccess(result){
	addSysTableTypeInfoSuccess(result);
	$("#add_config_table").modal("hide");
}

