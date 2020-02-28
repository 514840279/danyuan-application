$(function() {
	ajaxPost("/sysUserLanguage/findAll",{userUuid:userUuid},loadLanguages);

	function loadLanguages(result){
		$.each(result.data,function(index,value){
			appendLanguage(value);
		});
	}
	
	$("#add_user_upd_language_btn_id").unbind("click").bind("click",function(){
		var row = $("#add_user_upd_language_id");
		var info={
			language:row.find("input[name='language']").val(),
			hearing:row.find("input[name='hearing']").val(),
			readWrite:row.find("input[name='readWrite']").val(),
			userUuid:userUuid
		};
		ajaxPost("/sysUserLanguage/save",info,successAddLanguage);
		function successAddLanguage(result){
			row.find("input[name='language']").val("");
			row.find("input[name='hearing']").val("");
			row.find("input[name='readWrite']").val("");
			
			appendLanguage(result.data);
		}
	});
});

function appendLanguage(data){
	var row=$("#show_user_upd_language_id");
	var context = row.find("#row-text-content:eq(0)").clone(false);
	context.css({"display":""});
	context.find("#language").text(data.language);
	context.find("#hearing").text("听说能力:"+data.hearing);
	context.find("#readWrite").text("读写能力 :"+data.readWrite);
	
	context.find("#delete_user_upd_language_btn_id").unbind("click").bind("click",function(){
		ajaxPost("/sysUserLanguage/delete",data,successDelLanguage);
		function successDelLanguage(result){
			context.remove();
		}
	});
	row.append(context);
}
