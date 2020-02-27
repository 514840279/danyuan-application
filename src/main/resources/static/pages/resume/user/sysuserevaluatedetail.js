$(function(){
	init();
})

// 初始化方法
function init(){
	
	// 编辑按钮事件
	$("#resume_user_sysUserEvaluate_edit_button").bind("click",function(){
		$("#section_resume_user_sysUserEvaluate").find(".box-body").find('.row input').removeAttr("disabled");
		$("#resume_user_sysUserEvaluate_save_button").css({"display":""});
		$(this).css({"display":"none"});
	})
	
	// 保存按钮事件
	$("#resume_user_sysUserEvaluate_save_button").bind("click",function(){
		var url = "/sysUserEvaluate/save";
		var	info={
			uuid:$("#resume_user_sysUserEvaluate_uuid").val(),
			content:$("#resume_user_sysUserEvaluate_content").val(),
			type:$("#resume_user_sysUserEvaluate_type").val(),
			userUuid:$("#resume_user_sysUserEvaluate_userUuid").val(),
			createUser:username,
			updateUser:username,
		};
		ajaxPost(url, info, reloadSysUserEvaluateDetail);
	})
	
	// 退出详细信息 跳转列表页 点击事件
	$("#resume_user_sysUserEvaluate_exit_button").bind("click",function(){
		loadPage("/pages/resume/user/sysuserevaluate.html")
	})

}

// 提交按钮成功后 状态修改，
function reloadSysUserEvaluateDetail(result){
	if(result.code=="200"){
		$("#section_resume_user_sysUserEvaluate").find(".box-body").find('.row input').attr("disabled","disabled");
		$("#resume_user_sysUserEvaluate_edit_button").css({"display":""});
		$("#resume_user_sysUserEvaluate_save_button").css({"display":"none"});
	}else{
		toastr.error(result.message,"error");
	}
}


