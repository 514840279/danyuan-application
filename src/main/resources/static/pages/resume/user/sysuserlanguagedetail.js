$(function(){
	init();
})

// 初始化方法
function init(){
	
	// 编辑按钮事件
	$("#resume_user_sysUserLanguage_edit_button").bind("click",function(){
		$("#section_resume_user_sysUserLanguage").find(".box-body").find('.row input').removeAttr("disabled");
		$("#resume_user_sysUserLanguage_save_button").css({"display":""});
		$(this).css({"display":"none"});
	})
	
	// 保存按钮事件
	$("#resume_user_sysUserLanguage_save_button").bind("click",function(){
		var url = "/sysUserLanguage/save";
		var	info={
			uuid:$("#resume_user_sysUserLanguage_uuid").val(),
			userUuid:$("#resume_user_sysUserLanguage_userUuid").val(),
			language:$("#resume_user_sysUserLanguage_language").val(),
			hearing:$("#resume_user_sysUserLanguage_hearing").val(),
			readWrite:$("#resume_user_sysUserLanguage_readWrite").val(),
			createUser:username,
			updateUser:username,
		};
		ajaxPost(url, info, reloadSysUserLanguageDetail);
	})
	
	// 退出详细信息 跳转列表页 点击事件
	$("#resume_user_sysUserLanguage_exit_button").bind("click",function(){
		loadPage("/pages/resume/user/sysuserlanguage.html")
	})

}

// 提交按钮成功后 状态修改，
function reloadSysUserLanguageDetail(result){
	if(result.code=="200"){
		$("#section_resume_user_sysUserLanguage").find(".box-body").find('.row input').attr("disabled","disabled");
		$("#resume_user_sysUserLanguage_edit_button").css({"display":""});
		$("#resume_user_sysUserLanguage_save_button").css({"display":"none"});
	}else{
		toastr.error(result.message,"error");
	}
}


