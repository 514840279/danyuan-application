$(function() {
	

	$("#upload").bind("click",function(){
		var codetext = $("#code").val();
		if(codetext!=code){
			alert("验证码不正确！");
			return;
		}
	})
})

function dosettime(val) {
	var email = $("input[name='email']").val();
	if (email == "") {
		alert("请填写邮箱后再提交！");
		return;
	}

	var myreg =/^\w+@[a-z0-9]+\.[a-z]+$/i;/*邮箱不区分大小写*/
	if (!myreg.test(email)) {
		alert("请填写正确的邮箱！");
		return;
	}

	// 发送验证码
	var param = {
		email : email
	}
	var url = "/sysUserBaseInfo/sendMail"
	ajaxPost(url, param, successSendCode)
	function successSendCode(result) {
		console.log(result);
		if (result.code == "200") {
			code = result.data;
			settime(val)
		} else {
			alert(result.message);
		}

	}

}
var countdown = 60;
function settime(val) {
	if (countdown == 0) {
		val.removeAttribute("disabled");
		$(val).text("免费获取验证码");
		countdown = 60;
	} else {
		val.setAttribute("disabled", true);
		$(val).text("重新发送(" + countdown + ")");
		countdown--;
		setTimeout(function() {
			settime(val)
		}, 1000)
	}

}