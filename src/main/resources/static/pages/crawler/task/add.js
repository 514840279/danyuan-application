
$(function() {
	init();

});

function init(){
	var url ="/sysDicName/findkeyList";
	ajaxPost(url,{code:"crawler_request_web_mode"},loadRequestWay)
	
	$("#submit_add_crawler_task_id").bind("click",function(){
		submit_add_crawler_task_id();
	})
	
}

function loadRequestWay(result){
	data=[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.keyword,text:value.keyValue});
	})
	
	$('#add_task_requestType').select2({
	    tags: true,
	    data:data
	});
	$('#add_task_requestType').on('select2:select', function (evt) {
		add_task_requestType = evt.params.data.id;
	});
	

	if (taskdata.url !=null){
    	$("#add_task_url").val(taskdata.url);
    	$("#add_task_taskName").val(taskdata.taskName);
    	$("#add_task_urlType").val(taskdata.urlType);
    	$("#add_task_urlName").val(taskdata.urlName);
    	$("#add_task_charset").val(taskdata.charset);
    	$("#add_task_webIcon").val(taskdata.webIcon);
    	$("#add_task_requestData").val(taskdata.requestData);
    	add_task_requestType = taskdata.requestType;
    	$("#add_task_requestType").val(taskdata.requestType).trigger("change");
	}
}


function submit_add_crawler_task_id(){
	
	taskdata.url = $("#add_task_url").val();
	taskdata.taskName = $("#add_task_taskName").val();
	taskdata.urlType = $("#add_task_urlType").val();
	taskdata.urlName = $("#add_task_urlName").val();
	taskdata.charset = $("#add_task_charset").val();
	taskdata.webIcon = $("#add_task_webIcon").val();
	taskdata.requestData = $("#add_task_requestData").val();
	taskdata.requestType = add_task_requestType;
	var url = "/sysCrawlerTaskInfo/save";
	ajaxPost(url, taskdata, addSysCrawlerTaskInfoSuccess);
}

