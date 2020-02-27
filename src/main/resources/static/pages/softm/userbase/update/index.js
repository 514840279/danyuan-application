$(function() {
	$("#user_update_tab_id").tabs({
	   	 data: [{
	            id: 'user_upd_baseinfo',
	            text: '基本信息',
	            url: "pages/softm/userbase/update/user_upd_baseinfo.html"
	        },{
	            id: 'user_upd_education',
	            text: '教育信息',
	            url: "pages/softm/userbase/update/user_upd_education.html"
	        },{
	            id: 'user_upd_workexpreience',
	            text: '工作经验',
	            url: "pages/softm/userbase/update/user_upd_workexpreience.html"
	        },{
	            id: 'user_upd_project',
	            text: '项目经验',
	            url: "pages/softm/userbase/update/user_upd_project.html"
	        },{
	            id: 'user_upd_skill',
	            text: '专业技能',
	            url: "pages/softm/userbase/update/user_upd_skill.html"
	        },{
	            id: 'user_upd_language',
	            text: '语言技能',
	            url: "pages/softm/userbase/update/user_upd_language.html"
	        },{
	            id: 'user_upd_credentials',
	            text: '证书',
	            url: "pages/softm/userbase/update/user_upd_credentials.html"
	        },{
	            id: 'user_upd_evaluate',
	            text: '自我评价/其他',
	            url: "pages/softm/userbase/update/user_upd_evaluate.html"
	        }],
	        showIndex: 0,
	        loadAll: true
	   });
	
	$("#cra-resume-btn-id").unbind('click').bind("click",function(){
		ajaxPost("/sysUserModal/writeResume",{modalUuid:"902cb3f4-f90e-4fca-b23a-d09a31da4a0f",userUuid:userUuid},successWriteResume);
		function successWriteResume(result){
			resumePath = result.data;
		};
	});
	
	$("#jum-resume-btn-id").unbind('click').bind("click",function(){
		window.open(resumePath.replace("/file",""));
	});
});
