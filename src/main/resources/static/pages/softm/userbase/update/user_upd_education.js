$(function() {
	ajaxPost("/sysUserEducation/findAll",{userUuid:userUuid},loadEducations);

	function loadEducations(result){
		$.each(result.data,function(index,value){
			appendEducation(value);
		});
	}
	
	$("#add_user_upd_education_row_btn_id").unbind("click").bind("click",function(){
		var row = $("#add_user_upd_education_row_id");
		var info={
			graduationTime:row.find("input[name='graduationTime']").val(),
			graduationSchool:row.find("input[name='graduationSchool']").val(),
			major:row.find("input[name='major']").val(),
			unifiedStrategy:row.find("input[name='unifiedStrategy']").val(),
			education:row.find("input[name='education']").val(),
			lengthOfSchooling:row.find("input[name='lengthOfSchooling']").val(),
			userUuid:userUuid
		};
		ajaxPost("/sysUserEducation/save",info,successAddEducation);
		function successAddEducation(result){
			row.find("input[name='graduationTime']").val("");
			row.find("input[name='graduationSchool']").val("");
			row.find("input[name='major']").val("");
			row.find("input[name='unifiedStrategy']").val("");
			row.find("input[name='education']").val("");
			row.find("input[name='lengthOfSchooling']").val("");
			
			appendEducation(result.data);
		}
	});
});

function appendEducation(data){
	var row=$("#show_user_upd_education_row_id");
	var context = row.find("#row-text-content:eq(0)").clone(false);
	context.css({"display":""});
	context.find("#graduationTime").text(data.graduationTime);
	context.find("#graduationSchool").text(data.graduationSchool);
	context.find("#major").text(data.major);
	context.find("#unifiedStrategy").text(data.unifiedStrategy);
	context.find("#education").text(data.education);
	context.find("#lengthOfSchooling").text(data.lengthOfSchooling);
	
	context.find("#delete_user_upd_education_row_btn_id").unbind("click").bind("click",function(){
		ajaxPost("/sysUserEducation/delete",data,successDelEducation);
		function successDelEducation(result){
			context.remove();
		}
	});
	row.append(context);
}
