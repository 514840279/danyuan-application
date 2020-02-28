$(function() {
	ajaxPost("/sysUserEvaluate/findAll",{userUuid:userUuid},loadEvaluates);

	function loadEvaluates(result){
		$.each(result.data,function(index,value){
			appendEvaluate(value);
		});
	}
	
	$("#add_user_upd_evaluate_btn_id").unbind("click").bind("click",function(){
		var row = $("#add_user_upd_evaluate_id");
		var info={
			content:row.find("textarea[name='content']").val(),
			type:row.find("input[name='type']").val(),
			userUuid:userUuid
		};
		ajaxPost("/sysUserEvaluate/save",info,successAddEvaluate);
		function successAddEvaluate(result){
			row.find("textarea[name='content']").val("");
			row.find("input[name='type']").val("");
			
			appendEvaluate(result.data);
		}
	});
});

function appendEvaluate(data){
	var row=$("#show_user_upd_evaluate_id");
	var context = row.find("#row-text-content:eq(0)").clone(false);
	context.css({"display":""});
	context.find("#content").text(data.content);
	context.find("#type").text(data.type);
	
	context.find("#delete_user_upd_evaluate_btn_id").unbind("click").bind("click",function(){
		ajaxPost("/sysUserEvaluate/delete",data,successDelEvaluate);
		function successDelEvaluate(result){
			context.remove();
		}
	});
	row.append(context);
}
