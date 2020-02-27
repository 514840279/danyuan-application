$(function() {
	ajaxPost("/sysUserWorkExpreience/findAll",{userUuid:userUuid},loadWorkExpreiences);

	function loadWorkExpreiences(result){
		$.each(result.data,function(index,value){
			appendWorkExpreience(value);
		});
	}
	
	$("#add_user_upd_workexpreience_row_btn_id").unbind("click").bind("click",function(){
		var row = $("#add_user_upd_workexpreience_id");
		var info={
			startDate:row.find("input[name='startDate']").val(),
			endDate:row.find("input[name='endDate']").val(),
			unit:row.find("input[name='unit']").val(),
			workingLife:row.find("input[name='workingLife']").val(),
			position:row.find("input[name='position']").val(),
			salaryRange:row.find("input[name='salaryRange']").val(),
			natureOfTheFirm:row.find("input[name='natureOfTheFirm']").val(),
			firmAssetSize:row.find("input[name='firmAssetSize']").val(),
			workingRange:row.find("input[name='workingRange']").val(),
			workingContent:row.find("input[name='workingContent']").val(),
			userUuid:userUuid
		};
		ajaxPost("/sysUserWorkExpreience/save",info,successAddEducation);
		function successAddEducation(result){
			row.find("input[name='startDate']").val("");
			row.find("input[name='endDate']").val("");
			row.find("input[name='unit']").val("");
			row.find("input[name='workingLife']").val("");
			row.find("input[name='position']").val("");
			row.find("input[name='salaryRange']").val("");
			row.find("input[name='natureOfTheFirm']").val("");
			row.find("input[name='firmAssetSize']").val("");
			row.find("input[name='workingRange']").val("");
			row.find("input[name='workingContent']").val("");
			appendWorkExpreience(result.data);
		}
	});
});

function appendWorkExpreience(data){
	var row=$("#show_user_upd_workexpreience_id");
	var context = row.find("#row-text-content").clone(false);
	context.css({"display":""});
	context.find("#startDate").text(data.startDate);
	context.find("#endDate").text(data.endDate);
	context.find("#unit").text(data.unit);
	context.find("#workingLife").text(data.workingLife);
	context.find("#position").text(data.position);
	context.find("#salaryRange").text(data.salaryRange);
	context.find("#natureOfTheFirm").text(data.natureOfTheFirm);
	context.find("#firmAssetSize").text(data.firmAssetSize);
	context.find("#workingRange").text(data.workingRange);
	context.find("#workingContent").text(data.workingContent);
	
	context.find("#delete_user_upd_workexpreience_row_btn_id").unbind("click").bind("click",function(){
		ajaxPost("/sysUserWorkExpreience/delete",data,successDelWorkExpreience);
		function successDelWorkExpreience(result){
			context.remove();
		}
	});
	row.append(context);
}
