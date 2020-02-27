$(function(){
	init();
})

// 初始化方法
function init(){
	
	// 编辑按钮事件
	$("#resume_user_sysUserWorkExpreience_edit_button").bind("click",function(){
		$("#section_resume_user_sysUserWorkExpreience").find(".box-body").find('.row input').removeAttr("disabled");
		$("#resume_user_sysUserWorkExpreience_save_button").css({"display":""});
		$(this).css({"display":"none"});
	})
	
	// 保存按钮事件
	$("#resume_user_sysUserWorkExpreience_save_button").bind("click",function(){
		var url = "/sysUserWorkExpreience/save";
		var	info={
			uuid:$("#resume_user_sysUserWorkExpreience_uuid").val(),
			userUuid:$("#resume_user_sysUserWorkExpreience_userUuid").val(),
			endDate:$("#resume_user_sysUserWorkExpreience_endDate").val(),
			workingLife:$("#resume_user_sysUserWorkExpreience_workingLife").val(),
			unit:$("#resume_user_sysUserWorkExpreience_unit").val(),
			position:$("#resume_user_sysUserWorkExpreience_position").val(),
			startDate:$("#resume_user_sysUserWorkExpreience_startDate").val(),
			createUser:username,
			updateUser:username,
		};
		ajaxPost(url, info, reloadSysUserWorkExpreienceDetail);
	})
	
	// 退出详细信息 跳转列表页 点击事件
	$("#resume_user_sysUserWorkExpreience_exit_button").bind("click",function(){
		loadPage("/pages/resume/user/sysuserworkexpreience.html")
	})

}

// 提交按钮成功后 状态修改，
function reloadSysUserWorkExpreienceDetail(result){
	if(result.code=="200"){
		$("#section_resume_user_sysUserWorkExpreience").find(".box-body").find('.row input').attr("disabled","disabled");
		$("#resume_user_sysUserWorkExpreience_edit_button").css({"display":""});
		$("#resume_user_sysUserWorkExpreience_save_button").css({"display":"none"});
	}else{
		toastr.error(result.message,"error");
	}
}


