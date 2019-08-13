$(function() {
	// 初始化
	init();
});

// 初始化
function init() {
	// 检索条件
	add_user_index()
	// 查询按钮事件
	searchButtonClick()
}

var pageNumber=1;
function searchButtonClick() {

	$("#search_button").bind("click", function() {
		// var desc = $(".search_bar").find("li.active").text();
		var userIndex = $(".search_bar").find("li.active").attr("userIndex");
		var searchText = $("#keyword").val();

		if (searchText == null || searchText == "") {
			alert("请输入关键字");
			return;
		}
		pageNumber=1;
		$.each($("#main_context").find("div.item.box"),function(index,value){
			if(index>0){
				$(value).remove();
			}
		});
		var userDesc = $(".search_bar").find("li.active").text();
		var param ={
				"username":username,
				"pageNumber":pageNumber,
				"pageSize":15,
				"info":{
					"fileType" : userDesc,
					"fileName" : searchText,
				}
			}
		var url = '/sysShareFileInfo/search';
		ajaxPost(url, param, findAllShareFileSucess);
	})
	$(".search_button").click();
}

// 请求数据完成
function findAllShareFileSucess(result){
	var context = $("#main_context");
	
	$.each(context.find("div.item"),function(index,value){
		if(index>0){
			$(value).remove();
		}
	})
	
	$.each(result.content,function(index,value){
		var row = context.find("div.item:eq(0)").clone(false);
		row.css({"display":""});
		
		// 标题名称|文件名称
		row.find(".item_a_a").text(value.fileName);
		row.find(".item_a_a").click(function(){
			window.open("/sysShareFileInfo/fileinfo/"+value.uuid);
		})
		// 发布时间
		if(value.publishDate){
			row.find(".item_a .item_a_b").find("span:eq(0)").text("发布时间:"+value.publishDate);
		}
		
		var item_b = row.find(".item_b");
		// 作者
		if(value.author != "" && value.author != null){
			var item_b_d=item_b.find("div:eq(0)").clone(false);
			item_b_d.css({"display":""});
			item_b_d.find("span:eq(0)").text( "作者:"+value.author);
			item_b.append(item_b_d);
		}
		
		// 语言类型
		if(value.language != "" && value.language != null){
			var item_b_d=item_b.find("div:eq(0)").clone(false);
			item_b_d.css({"display":""});
			item_b_d.find("span:eq(0)").text( "语言类型:"+value.language);
			item_b.append(item_b_d);
		}
		
		// 发行版次
		if(value.version != "" && value.version != null){
			var item_b_d=item_b.find("div:eq(0)").clone(false);
			item_b_d.css({"display":""});
			item_b_d.find("span:eq(0)").text( "发行版次:"+value.version);
			item_b.append(item_b_d);
		}
		
		// 发行单位
		if(value.publishOrg != "" && value.publishOrg != null){
			var item_b_d=item_b.find("div:eq(0)").clone(false);
			item_b_d.css({"display":""});
			item_b_d.find("span:eq(0)").text( "发行单位:"+value.publishOrg);
			item_b.append(item_b_d);
		}
		
		// 分类
		if(value.generateType != "" && value.generateType != null){
			var item_b_d=item_b.find("div:eq(0)").clone(false);
			item_b_d.css({"display":""});
			item_b_d.find("span:eq(0)").text( "分类:"+value.generateType);
			item_b.append(item_b_d);
			// 分类2
			if(value.generateType2 != "" && value.generateType2 != null){
				var item_b_d=item_b.find("div:eq(0)").clone(false);
				item_b_d.css({"display":""});
				item_b_d.find("span:eq(0)").text(value.generateType2);
				item_b.append(item_b_d);
				
			}
		}
		
		// 简介文本大约300字
		row.find(".item_c").text(value.fileInstru);
		
		// 来源
		row.find(".item_d").find(".col_1 span:eq(0)").text("来源:"+value.fromWeb);
		row.find(".item_d").find(".col_1 span:eq(0)").click(function(){
			window.open(value.fromPath);
		})
		
		// 文件类行 
		if(value.fileType != "" && value.fileType != null){
			row.find(".item_d").find(".col_1 span:eq(1)").text("文件类行:"+value.fileType);
		}
		
		// 文件类行 
		if(value.createTime != "" && value.createTime != null){
			row.find(".item_d").find(".item_a_b span:eq(0)").text("收录时间:"+value.createTime);
		}
		context.append(row);
	});

	// 分页
	var options = {
		size:"large",
		bootstrapMajorVersion:3,
		currentPage: result.number+1,
		totalPages: result.totalPages,
		numberOfPages:result.numberOfElements,
		onPageClicked:function(event, originalEvent, type,page){
			var searchText = $("#keyword").val();
			var userDesc = $(".search_bar").find("li.active").text();
			var param ={
					"username":username,
					"pageNumber":page,
					"pageSize":15,
					"info":{
						"fileType" : userDesc,
						"fileName" : searchText,
					}
				}
			var url = '/sysShareFileInfo/search';
			ajaxPost(url, param, findAllShareFileSucess);
		}
	}
	
	$('#example').bootstrapPaginator(options);
	
}

// search bar
function add_user_index() {
	var result=[
		{"userIndex":"SJZL","userPlaceholder":"请输入书籍资料文件名称","userDesc":"书籍资料"},
		{"userIndex":"SPJC","userPlaceholder":"请输入视频教程名称","userDesc":"视频教程"},
		{"userIndex":"DY","userPlaceholder":"请输入电影名称","userDesc":"电影"},
		{"userIndex":"DSJ","userPlaceholder":"请输入电视剧名称","userDesc":"电视剧"},
		{"userIndex":"DM","userPlaceholder":"请输入动漫名称","userDesc":"动漫"}
	];
	
	$.each(result, function(index, value) {
		// 加载数据
		var li = '<li userIndex="' + value.userIndex
				+ '" userPlaceholder="' + value.userPlaceholder
				+ '"><a href="#">' + value.userDesc + '</a></li>'
		$(".search_bar").append(li);
	});
	$(".search_bar").find("li").click(function() {
		$(".search_bar").find("li").removeClass("active");
		$(this).addClass("active");
		var userPlaceholder = $(this).attr("userPlaceholder");
		if ("null" != userPlaceholder) {
			$("#keyword").attr("placeholder", userPlaceholder);
		} else {
			$("#keyword").attr("placeholder", "请输入关键字");
		}

	});
	$(".search_bar").find("li:eq(0)").click();
}