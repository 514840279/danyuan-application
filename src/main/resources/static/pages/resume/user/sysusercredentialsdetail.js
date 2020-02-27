$(function(){
	init();
})

// 初始化方法
function init(){
	
	// 编辑按钮事件
	$("#resume_user_sysUserCredentials_edit_button").bind("click",function(){
		$("#section_resume_user_sysUserCredentials").find(".box-body").find('.row input').removeAttr("disabled");
		$("#resume_user_sysUserCredentials_save_button").css({"display":""});
		$(this).css({"display":"none"});
	})
	
	// 保存按钮事件
	$("#resume_user_sysUserCredentials_save_button").bind("click",function(){
		var url = "/sysUserCredentials/save";
		var	info={
			uuid:$("#resume_user_sysUserCredentials_uuid").val(),
			credentials:$("#resume_user_sysUserCredentials_credentials").val(),
			userUuid:$("#resume_user_sysUserCredentials_userUuid").val(),
			gdate:$("#resume_user_sysUserCredentials_gdate").val(),
			createUser:username,
			updateUser:username,
		};
		ajaxPost(url, info, reloadSysUserCredentialsDetail);
	})
	
	// 退出详细信息 跳转列表页 点击事件
	$("#resume_user_sysUserCredentials_exit_button").bind("click",function(){
		loadPage("/pages/resume/user/sysusercredentials.html")
	})

}

// 提交按钮成功后 状态修改，
function reloadSysUserCredentialsDetail(result){
	if(result.code=="200"){
		$("#section_resume_user_sysUserCredentials").find(".box-body").find('.row input').attr("disabled","disabled");
		$("#resume_user_sysUserCredentials_edit_button").css({"display":""});
		$("#resume_user_sysUserCredentials_save_button").css({"display":"none"});
	}else{
		toastr.error(result.message,"error");
	}
}


