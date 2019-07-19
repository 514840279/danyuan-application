$(function() {
	init();
});
// 初始化 
function init(){

	// 如果配置的第一项类型为空或者第一项名称为空，提示补充选择
	if(ruler['pageType']==null||ruler['pageType']==""||ruler['pageName']==null||ruler['pageName']==""){
		toastr.info("需要选择页面类型，并设置标题名，才可以进行管理配置规则！","info")
		$("#sysrulerinfo_pageType_modal").modal({"show":true});
		
	}else{
		
		// 初始化一个空的tab
		$("#tab-context").tabs({
			data:[{id: ruler['pageType'], text: ruler['pageName'], closeable: true, url: '/crawler/ruler/'+ruler['pageType']+'/'+ruler['uuid']}],
			showIndex: 0,
	        loadAll: false
        })
	}
	
	$("#sysrulerinfo_pageType_select").select2({
		data:[
			{"id":"","text":"请选择"},
			{"id":"pageList","text":"列表型页面"},
			{"id":"pageDetail","text":"详细信息页面"}
			]
	}).on('select2:select', function (evt) {
		ruler['pageType']=evt.params.data.id;
	});
	
	$("#sysrulerinfo_pageType_upd_button").click(function(){
		ruler['pageName'] = $("#sysrulerinfo_pageName").val();
		$("#sysrulerinfo_pageType_modal").modal("hide");
		saveRuler(ruler);
		// 初始化一个空的tab
		$("#tab-context").tabs({
			data:[{id: ruler['uuid'], text: ruler['pageName'], closeable: true, url: '/crawler/ruler/'+ruler['pageType']+'/'+ruler['uuid']}],
			showIndex: 0,
	        loadAll: false
        })
	})
	
}


//类型有则根据类型去选择加载的不同页面
function loadsubConfigContext(uuid,pageType,pageName){
	
	switch(pageType){
		case "pageList":
			$("#tab-context").data("tabs").addTab({id: uuid, text: pageName, closeable: true, url: '/crawler/ruler/pageList/'+uuid});
			break;
		case "pageDetail":
			$("#tab-context").data("tabs").addTab({id: uuid, text: pageName, closeable: true, url: '/crawler/ruler/pageDetail/'+uuid});
			break;
		default:
			break;
	}

}

function saveRuler(ruler){
	ajaxPost("/crawler/ruler/save",ruler);
}

