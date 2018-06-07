$(function() {
	// search bar 数据
	var url = '/zhcx/findAllType';
	ajaxPost(url, {"username":username}, findAllType_Sucess, 1000, findError);
	
});
// 分类别添加
function findAllType_Sucess(result){
	$.each(result,function(index,value){
		var typeUuid=value.uuid;
//		console.log(value);
		var type = $("#mainDiv").find("#show_type_id:eq(0)").clone();
		type.find("#type_text_id").text(value.typeName);
		
		// 调用表名查询
		var url_table = '/zhcx/findAllTableByTypeUuid';
		var param_table ={
			info:{	
				"username":username,
				typeUuid:typeUuid
			}
		}
		
		jQuery.ajax({
			type : 'POST',
			url : url_table,
			dataType : 'json',
			cache : false,
			contentType : 'application/json',
			data : JSON.stringify(param_table),
			success : function(result) {
				var table_parrent = type.find("#show_table_id");
				$.each(result,function(index,value){
					var table = table_parrent.find("div:eq(0)").clone();
					var tabsUuid = value.uuid;
					var tabsRows = value.tabsRows==null?0:value.tabsRows;
					
					var viewTable = value.tabsDesc==null?value.tabsName:value.tabsDesc;
					table.text(viewTable);
					if(tabsRows==0){
						table.css({"color":"red"});
						table.text(viewTable+"(确认是否空表)");
					}
					table.attr({"tabsUuid":tabsUuid})
					table.attr({"tabsRows":tabsRows})
					table.css({"display":""})
					table_parrent.append(table);
					table.bind('click',function(){
						jQuery("#tabsuuid").val(tabsUuid);
						jQuery("#tabsName").val(value.tabsName);
						jQuery("#tabsDesc").val(value.tabsDesc);
						jQuery("#tabsRows").val(tabsRows);
						jQuery("#dbType").val(value.dbType);
//						jQuery("#esName").val(value.esName);
						jQuery("#zhcx_type").val("单表多条件查询");
						jQuery("#zhlbform").attr("action",  "/zhcx/forwardZhlb");
						jQuery("#zhlbform").submit();
					})
					type.css({"display":""});
				});
			}
		});
		$("#mainDiv").append(type);
	})
}



function findError(result) {
    window.parent.window.alert(JSON.stringify(result));
};