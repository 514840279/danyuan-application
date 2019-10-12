$(function(){
	init();
})

function init(){
	
	$("#file_upload_sysFileUploadInfo_edit_button").bind("click",function(){
		$("#section_file_upload_sysFileUploadInfo").find(".box-body").find('.row input').removeAttr("disabled");
		$("#file_upload_sysFileUploadInfo_save_button").css({"display":""});
		$(this).css({"display":"none"});
	})
	
	$("#file_upload_sysFileUploadInfo_save_button").bind("click",function(){
		var url = "/sysFileUploadInfo/save";
		var	info={
			uuid:$("#file_upload_sysFileUploadInfo_uuid").val(),
			type:$("#file_upload_sysFileUploadInfo_type").val(),
			size:$("#file_upload_sysFileUploadInfo_size").val(),
			name:$("#file_upload_sysFileUploadInfo_name").val(),
			path:$("#file_upload_sysFileUploadInfo_path").val(),
			createUser:username,
			updateUser:username,
		};
		ajaxPost(url, info, reloadSysFileUploadInfoDetail);
	})
	
	$("#file_upload_sysFileUploadInfo_exit_button").bind("click",function(){
		loadPage("/pages/file/upload/sysfileuploadinfo.html")
	})

}

// 状态修改，
function reloadSysFileUploadInfoDetail(result){
	if(result.code=="200"){
		$("#section_file_upload_sysFileUploadInfo").find(".box-body").find('.row input').attr("disabled","disabled");
		$("#file_upload_sysFileUploadInfo_edit_button").css({"display":""});
		$("#file_upload_sysFileUploadInfo_save_button").css({"display":"none"});
	}else{
		toastr.error(result.message,"error");
	}
}


