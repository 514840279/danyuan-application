
$(function() {
	// 绑定添加事件
	$("#submit_add_group_id").bind("click",function(){
		var jsonstr = $("#detailConfText").val();
		try{    
	         var josnobj = eval('('+jsonstr+')');
	         var param={
	     			uuid:$("#add_ruler_group_uuid").val(),
	     			taskUuid:taskUuid,
	     			type:$("#add_ruler_type").val(),
	     			name:$("#add_ruler_name").val(),
	     			contentInfo:jsonstr,
	     			contentJsonInfo:JSON.stringify(josnobj),
	     			statue:0,
	     			deleteFlag:0,
	     			createUser:username,
	     			updateUser:username,
	     		};
	         console.log(param);
	     		var url="/sysCrawlerRulerInfo/save";
	     		ajaxPost(url,param,successedSaveRulerGroup)
	    }
	    catch(er){
	    	toastr.error("配置的规则无法转化为标准json！","添加失败");
	    }
	    
		
	});
});

function successedSaveRulerGroup(result){
	$("#add_rule_group_table").modal('hide');
	$('#crawler_rule_group_config_table_datagrid').bootstrapTable('refresh');
};








