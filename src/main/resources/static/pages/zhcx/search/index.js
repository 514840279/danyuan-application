$(function() {
	$("#search-2-box").css({"display":"none"});
	// search bar 数据
	var url = '/sysDbmsUserIndexInfo/findAll';
	ajaxPost(url, null, add_user_index_sucess, 1000, findError);
	$("#search-1-box-button-show").click(function(){
		$("#search-2-box").css({"display":"none"});
		$("#search-1-box").css({"display":""});
	});
	$("#search-2-box-button-show").click(function(){
		$("#search-1-box").css({"display":"none"});
		$("#search-2-box").css({"display":""});
	})
	// 
	searchButtonClick();
	
});
function multeitySearchButtonClick(){
	$("#search_group_button").click(function(){
		paramList = [];
		var text = "";
		// 每一次改变全部重新获取
		$("#search_group_box_id").find("div[class='row']").each(function() {
			var div = jQuery(this)
			var userIndex = div.attr("userIndex");
			var userDesc = div.attr("userDesc");
			div.find("input").each(function() {
				var input = jQuery(this);
				var operator = input.attr("operator");
				var value = input.val();
				if (null != value && "" != value) {
					if ("eq" == operator) {
						text += userDesc + "=" + value + ",";
					} else if ("ge" == operator) {
						text += userDesc + ">=" + value + ",";
					} else if ("le" == operator) {
						text += userDesc + "<=" + value + ",";
					}
					paramList.push({
						"userIndex" : userIndex,
						"userDesc" : userDesc,
						"value" : value,
						"operator" : operator
					});
				}
			});
		});
		if(paramList.length==0){
			alert("请输入关键字");
			return;
		}
		$("#zhcx_type").val("一键查询单表多个不同索引拼接");
		$("#zhcx_userindex").val("");
		$("#zhcx_sousuo_input").val("");
		// 跳转页面
		$("#zhcx_sousuo_paramString").val(JSON.stringify(paramList));
		$("#sosuoform").submit();
	});
}
function searchButtonClick(){
	$("#search_button").click(function(){
//		var desc = $(".search_bar").find("li.active").text();
		var userIndex = $(".search_bar").find("li.active").attr("userIndex");
		var searchText = $("#keyword").val();
		
		if(searchText==null||searchText==""){
			alert("请输入关键字");
			return;
		}
		var userDesc = $(".search_bar").find("li.active").text();
		var paramList = [];
		paramList.push({
			"userIndex" : userIndex,
			"userDesc" : userDesc,
			"value" : searchText,
			"operator" : "eq"
		});
		$("#zhcx_sousuo_paramString").val(JSON.stringify(paramList));
		$("#zhcx_type").val("一键查询单表多个不同索引拼接");
		$("#sosuoform").submit();
	})
}
// search bar
function add_user_index_sucess(result){
	$.each(result, function(index, value) {
		if(value.deleteFlag ==1){
			// 加载数据
			var li = '<li userIndex="'+value.userIndex+'" userPlaceholder="'+value.userPlaceholder+'"><a href="#">'+value.userDesc+'</a></li>'
			$(".search_bar").append(li);
		}
    });
	$(".search_bar").find("li").click(function(){
		$(".search_bar").find("li").removeClass("active");
		$(this).addClass("active");
		var userPlaceholder = $(this).attr("userPlaceholder");
		if("null"!=userPlaceholder){
			$("#keyword").attr("placeholder",userPlaceholder);
		}else{
			$("#keyword").attr("placeholder","请输入关键字");
		}
		
	});
	$(".search_bar").find("li:eq(0)").click();
	forGgroupBox(result);
}
function forGgroupBox(result){
	var box = $("#search_group_box_id");
	$.each(result,function(index,value){
		if(value.multeity == 1){
			var pargroup = $("#search_group_box_id").find("#search_group_id:eq(0)").clone(false);
			pargroup.attr("userIndex",value.userIndex);
			pargroup.attr("userDesc",value.userDesc);
			pargroup.find("#title").text(value.userDesc+"：");
			var userPlaceholder = value.userPlaceholder;
			if("null"!=userPlaceholder){
				pargroup.find("input:eq(0)").attr("placeholder",userPlaceholder);
			}else{
				pargroup.find("input:eq(0)").attr("placeholder","请输入关键字");
			}
			
			pargroup.find("#title").text(value.userDesc+"：");
			pargroup.css({"display":""});
			box.append(pargroup);
		}
	});
	multeitySearchButtonClick();
}
function findError(result) {
    window.parent.window.alert(JSON.stringify(result));
};