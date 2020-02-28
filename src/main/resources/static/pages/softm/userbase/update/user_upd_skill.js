$(function() {
	ajaxPost("/sysUserSkill/findAll",{userUuid:userUuid},loadSkills);

	function loadSkills(result){
		$.each(result.data,function(index,value){
			appendSkill(value);
		});
	}
	
	$("#add_user_upd_skill_btn_id").unbind("click").bind("click",function(){
		var row = $("#add_user_upd_skill_id");
		var info={
			skill:row.find("input[name='skill']").val(),
			proficiency:row.find("input[name='proficiency']").val(),
			userUuid:userUuid
		};
		ajaxPost("/sysUserSkill/save",info,successAddSkill);
		function successAddSkill(result){
			row.find("input[name='skill']").val("");
			row.find("input[name='proficiency']").val("");
			
			appendSkill(result.data);
		}
	});
});

function appendSkill(data){
	var row=$("#show_user_upd_skill_id");
	var context = row.find("#row-text-content:eq(0)").clone(false);
	context.css({"display":""});
	context.find("#skill").text(data.skill);
	context.find("#proficiency").text(data.proficiency);
	
	context.find("#delete_user_upd_skill_btn_id").unbind("click").bind("click",function(){
		ajaxPost("/sysUserSkill/delete",data,successDelSkill);
		function successDelSkill(result){
			context.remove();
		}
	});
	row.append(context);
}
