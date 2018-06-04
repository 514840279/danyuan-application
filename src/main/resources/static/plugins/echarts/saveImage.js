//    保存图片到服务器
function save(base64url,title){
	 var par ={
			 wordbook :{
				 picBase64Info : base64url,
				 modeName:title
//				 ,
//				 name:username
			 }
	 }
	var url = contextPath + "/page/wordbook/wordbook_saveWordbook.action";
	ajaxPost(url, par,  success, 50000, error);
};

function error(){
	alert("保存失败");
};

function success(result){
	alert("保存成功");
}