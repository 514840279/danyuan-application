

function submit_add_crawler_task_id(){
	taskdata.uuid = $("#add_task_uuid").val()
	taskdata.url = $("#add_task_url").val();
	taskdata.taskName = $("#add_task_taskName").val();
	taskdata.urlType = $("#add_task_urlType").val();
	taskdata.webIcon = $("#add_task_webIcon").val();
	var url = "/sysCrawlerTaskInfo/save";
	ajaxPost(url, taskdata, addSysCrawlerTaskInfoSuccess);
}

