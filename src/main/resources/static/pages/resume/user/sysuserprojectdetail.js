$(function(){
	init();
})

// 初始化方法
function init(){
	
	// 编辑按钮事件
	$("#resume_user_sysUserProject_edit_button").bind("click",function(){
		$("#section_resume_user_sysUserProject").find(".box-body").find('.row input').removeAttr("disabled");
		$("#resume_user_sysUserProject_save_button").css({"display":""});
		$(this).css({"display":"none"});
	})
	
	// 保存按钮事件
	$("#resume_user_sysUserProject_save_button").bind("click",function(){
		var url = "/sysUserProject/save";
		var	info={
			uuid:$("#resume_user_sysUserProject_uuid").val(),
			projectName:$("#resume_user_sysUserProject_projectName").val(),
			position:$("#resume_user_sysUserProject_position").val(),
			projectContent:$("#resume_user_sysUserProject_projectContent").val(),
			userUuid:$("#resume_user_sysUserProject_userUuid").val(),
			startDate:$("#resume_user_sysUserProject_startDate").val(),
			unit:$("#resume_user_sysUserProject_unit").val(),
			endDate:$("#resume_user_sysUserProject_endDate").val(),
			createUser:username,
			updateUser:username,
		};
		ajaxPost(url, info, reloadSysUserProjectDetail);
	})
	
	// 退出详细信息 跳转列表页 点击事件
	$("#resume_user_sysUserProject_exit_button").bind("click",function(){
		loadPage("/pages/resume/user/sysuserproject.html")
	})

}

// 提交按钮成功后 状态修改，
function reloadSysUserProjectDetail(result){
	if(result.code=="200"){
		$("#section_resume_user_sysUserProject").find(".box-body").find('.row input').attr("disabled","disabled");
		$("#resume_user_sysUserProject_edit_button").css({"display":""});
		$("#resume_user_sysUserProject_save_button").css({"display":"none"});
	}else{
		toastr.error(result.message,"error");
	}
}


