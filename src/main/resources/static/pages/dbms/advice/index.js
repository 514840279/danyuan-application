$(function() {
	var url = "/sysAdviceMess/findAll";
	ajaxPost(url, null, showAllAdvice);
//	hljs.initHighlighting();
});


function showAllAdvice(result){
	var messages="";
	var perId="";
	var type = "";
	$.each(result,function(index,value){
		if(index ==0 ){
			type = value.type;
			perId="perid"+index;
		}
		if(value.type!= type){
			newPer(type,messages);
			messages ="";
			type = value.type;
		}
		messages +="\n\n-- "+value.tableDesc+"("+value.tableName+")"+"\n";
		messages += value.message;
	})
	newPer(type,messages);
	
}


function newPer(type,messages){
	var content = $("#content");
	var preContext= content.find("div:eq(0)").clone(false);
	preContext.css({"display":""});
	preContext.find('pre code').text(messages);
	preContext.find("#type_text_id").text(type);
	content.append(preContext);
}

