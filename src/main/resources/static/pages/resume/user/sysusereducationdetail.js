$(function(){
	init();
})

// 初始化方法
function init(){
	
	// 编辑按钮事件
	$("#resume_user_sysUserEducation_edit_button").bind("click",function(){
		$("#section_resume_user_sysUserEducation").find(".box-body").find('.row input').removeAttr("disabled");
		$("#resume_user_sysUserEducation_save_button").css({"display":""});
		$(this).css({"display":"none"});
	})
	
	// 保存按钮事件
	$("#resume_user_sysUserEducation_save_button").bind("click",function(){
		var url = "/sysUserEducation/save";
		var	info={
			uuid:$("#resume_user_sysUserEducation_uuid").val(),
			major:$("#resume_user_sysUserEducation_major").val(),
			graduationTime:$("#resume_user_sysUserEducation_graduationTime").val(),
			userUuid:$("#resume_user_sysUserEducation_userUuid").val(),
			education:$("#resume_user_sysUserEducation_education").val(),
			graduationSchool:$("#resume_user_sysUserEducation_graduationSchool").val(),
			lengthOfSchooling:$("#resume_user_sysUserEducation_lengthOfSchooling").val(),
			createUser:username,
			updateUser:username,
		};
		ajaxPost(url, info, reloadSysUserEducationDetail);
	})
	
	// 退出详细信息 跳转列表页 点击事件
	$("#resume_user_sysUserEducation_exit_button").bind("click",function(){
		loadPage("/pages/resume/user/sysusereducation.html")
	})

}

// 提交按钮成功后 状态修改，
function reloadSysUserEducationDetail(result){
	if(result.code=="200"){
		$("#section_resume_user_sysUserEducation").find(".box-body").find('.row input').attr("disabled","disabled");
		$("#resume_user_sysUserEducation_edit_button").css({"display":""});
		$("#resume_user_sysUserEducation_save_button").css({"display":"none"});
	}else{
		toastr.error(result.message,"error");
	}
}


