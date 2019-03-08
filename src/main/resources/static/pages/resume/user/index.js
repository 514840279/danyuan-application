$(function() {
	$("#input-b2").fileinput({
		showUpload : false,
		dropZoneEnabled : false,
		maxFileCount : 1,
		mainClass : "input-group-lg"
	});

})
var countdown=60;
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