$(function() {
	ajaxPost("/sysUserBaseInfo/findByUuid",{uuid:userUuid},loadBaseinfo);
	function loadBaseinfo(result){
		$("#user_upd_baseinfo_persionName").val(result.persionName);
		$("#user_upd_baseinfo_sex").val(result.sex);
		$("#user_upd_baseinfo_age").val(result.age);
		$("#user_upd_baseinfo_addr").val(result.addr);
		$("#user_upd_baseinfo_university").val(result.university);
		$("#user_upd_baseinfo_education").val(result.education);
		$("#user_upd_baseinfo_major").val(result.major);
		$("#user_upd_baseinfo_phone").val(result.phone);
		$("#user_upd_baseinfo_email").val(result.email);
		$("#user_upd_baseinfo_qq").val(result.qq);
		$("#user_upd_baseinfo_position").val(result.position);
		$("#user_upd_baseinfo_expectedSalary").val(result.expectedSalary);
		$("#user_upd_baseinfo_expectedPlace").val(result.expectedPlace);
		$("#user_upd_baseinfo_workNature").val(result.workNature);
		$("#user_upd_baseinfo_statue").val(result.statue);
	};
	
	$("#user_upd_baseinfo_save_btn_id").bind("click",function(){
		var baseinfo={
				uuid:userUuid,
			persionName : $("#user_upd_baseinfo_persionName").val(),
			sex:$("#user_upd_baseinfo_sex").val(),
			age:$("#user_upd_baseinfo_age").val(),
			addr:$("#user_upd_baseinfo_addr").val(),
			university:$("#user_upd_baseinfo_university").val(),
			education:$("#user_upd_baseinfo_education").val(),
			major:$("#user_upd_baseinfo_major").val(),
			phone:$("#user_upd_baseinfo_phone").val(),
			email:$("#user_upd_baseinfo_email").val(),
			qq:$("#user_upd_baseinfo_qq").val(),
			position:$("#user_upd_baseinfo_position").val(),
			expectedSalary:$("#user_upd_baseinfo_expectedSalary").val(),
			expectedPlace:$("#user_upd_baseinfo_expectedPlace").val(),
			workNature:$("#user_upd_baseinfo_workNature").val(),
			statue:$("#user_upd_baseinfo_statue").val()
		};
		
		ajaxPost("/sysUserBaseInfo/saveBaseinfo",baseinfo,saveInofOk);
		function saveInofOk(result){
			toastr.info(result.msg);
		}
	});
	
});
