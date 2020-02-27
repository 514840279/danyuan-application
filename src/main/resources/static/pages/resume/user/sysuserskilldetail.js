$(function(){
	init();
})

// 初始化方法
function init(){
	
	// 编辑按钮事件
	$("#resume_user_sysUserSkill_edit_button").bind("click",function(){
		$("#section_resume_user_sysUserSkill").find(".box-body").find('.row input').removeAttr("disabled");
		$("#resume_user_sysUserSkill_save_button").css({"display":""});
		$(this).css({"display":"none"});
	})
	
	// 保存按钮事件
	$("#resume_user_sysUserSkill_save_button").bind("click",function(){
		var url = "/sysUserSkill/save";
		var	info={
			uuid:$("#resume_user_sysUserSkill_uuid").val(),
			month:$("#resume_user_sysUserSkill_month").val(),
			proficiency:$("#resume_user_sysUserSkill_proficiency").val(),
			skill:$("#resume_user_sysUserSkill_skill").val(),
			userUuid:$("#resume_user_sysUserSkill_userUuid").val(),
			createUser:username,
			updateUser:username,
		};
		ajaxPost(url, info, reloadSysUserSkillDetail);
	})
	
	// 退出详细信息 跳转列表页 点击事件
	$("#resume_user_sysUserSkill_exit_button").bind("click",function(){
		loadPage("/pages/resume/user/sysuserskill.html")
	})

}

// 提交按钮成功后 状态修改，
function reloadSysUserSkillDetail(result){
	if(result.code=="200"){
		$("#section_resume_user_sysUserSkill").find(".box-body").find('.row input').attr("disabled","disabled");
		$("#resume_user_sysUserSkill_edit_button").css({"display":""});
		$("#resume_user_sysUserSkill_save_button").css({"display":"none"});
	}else{
		toastr.error(result.message,"error");
	}
}


