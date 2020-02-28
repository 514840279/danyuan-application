$(function() {
	ajaxPost("/sysUserCredentials/findAll",{userUuid:userUuid},loadCredentials);

	function loadCredentials(result){
		$.each(result.data,function(index,value){
			appendCredentials(value);
		});
	}
	
	$("#add_user_upd_credentials_btn_id").unbind("click").bind("click",function(){
		var row = $("#add_user_upd_credentials_id");
		var info={
			credentials:row.find("input[name='credentials']").val(),
			gdate:row.find("input[name='gdate']").val(),
			userUuid:userUuid
		};
		ajaxPost("/sysUserCredentials/save",info,successAddCredentials);
		function successAddCredentials(result){
			row.find("input[name='credentials']").val("");
			row.find("input[name='gdate']").val("");
			
			appendCredentials(result.data);
		}
	});
});

function appendCredentials(data){
	var row=$("#show_user_upd_credentials_id");
	var context = row.find("#row-text-content:eq(0)").clone(false);
	context.css({"display":""});
	context.find("#credentials").text(data.credentials);
	context.find("#gdate").text(data.gdate);
	
	context.find("#delete_user_upd_credentials_btn_id").unbind("click").bind("click",function(){
		ajaxPost("/sysUserCredentials/delete",data,successDelCredentials);
		function successDelCredentials(result){
			context.remove();
		}
	});
	row.append(context);
}
