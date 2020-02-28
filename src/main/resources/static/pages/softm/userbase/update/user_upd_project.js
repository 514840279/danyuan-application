$(function() {
	ajaxPost("/sysUserProject/findAll",{userUuid:userUuid},loadProjects);

	function loadProjects(result){
		$.each(result.data,function(index,value){
			appendProject(value);
		});
	}
	
	$("#add_user_upd_project_row_btn_id").unbind("click").bind("click",function(){
		var row = $("#add_user_upd_project_id");
		var info={
			startDate:row.find("input[name='startDate']").val(),
			endDate:row.find("input[name='endDate']").val(),
			projectName:row.find("input[name='projectName']").val(),
			softwareEnvironment:row.find("input[name='softwareEnvironment']").val(),
			hardwareEnvironment:row.find("input[name='hardwareEnvironment']").val(),
			developerKits:row.find("input[name='developerKits']").val(),
			responsibilityDescription:row.find("input[name='responsibilityDescription']").val(),
			projectContent:row.find("textarea[name='projectContent']").val(),
			userUuid:userUuid
		};
		ajaxPost("/sysUserProject/save",info,successAddProject);
		function successAddProject(result){
			row.find("input[name='startDate']").val("");
			row.find("input[name='endDate']").val("");
			row.find("input[name='projectName']").val("");
			row.find("input[name='softwareEnvironment']").val("");
			row.find("input[name='hardwareEnvironment']").val("");
			row.find("input[name='developerKits']").val("");
			row.find("input[name='responsibilityDescription']").val("");
			row.find("textarea[name='projectContent']").val("");
			
			appendProject(result.data);
		}
	});
});

function appendProject(data){
	var row=$("#show_user_upd_project_id");
	var context = row.find("#row-text-content:eq(0)").clone(false);
	context.css({"display":""});
	context.find("#startDate").text(data.startDate);
	context.find("#endDate").text(data.endDate);
	context.find("#projectName").text(data.projectName);
	context.find("#softwareEnvironment").text("软件环境："+data.softwareEnvironment);
	context.find("#hardwareEnvironment").text("硬件环境："+data.hardwareEnvironment);
	context.find("#developerKits").text("开发工具："+data.developerKits);
	context.find("#responsibilityDescription").text("责任描述："+data.responsibilityDescription);
	context.find("#projectContent").text("项目简介："+data.projectContent);
	
	context.find("#delete_user_upd_project_row_btn_id").unbind("click").bind("click",function(){
		ajaxPost("/sysUserProject/delete",data,successDelProject);
		function successDelProject(result){
			context.remove();
		}
	});
	row.append(context);
}
