$(function(){
	$("#test_mail_send_btn_id").click(function(){
		var param ={
				mail:$("#mail_send_to").val(),
				message:$("#mail_send_to_message").val(),
		}
		// 重载
		var url = "/mail/send";
		ajaxPost(url, param, successSendMail, null, findError);
		
	})
	
})

function successSendMail(result){
	alert("邮件发送成功，您的代码是："+result.code);
}