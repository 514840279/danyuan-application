_history = [];
(function($) {
	var hasHome=false;
	var menu_data = [];
	// console.log(username);
	// 请求数据地址
	var url = "/sysMenuInfo/findzTreeByUser";
	// 请求数据
	ajaxPost(url, null, loadMenu, null, findError);
	// 加载menu
	function loadMenu(result) {
		// 遍历结果集
		$.each(result, function(index, value) {
			// 加载数据
			$(".sidebar-menu").append(sidebar_menu_add_li(value));
		});
		// console.log(JSON.stringify(result));
		$("a[data-url]").click(function(evt) {
			loadPage($(this).data("url"), $(this).data("id"), $(this)
					.data("name"));
			$("ul.treeview-menu li").removeClass("active");
			$(this).parent().addClass("active");
		});
		
		// 系统选中状态
		$.each($(".sidebar-menu").find("li").find("ul").find("li").find("a"),function(index,value){
			if($(value).data("homepage") == true){
				$(value).parent("li").addClass("active");
				$(value).parent("li").parent("ul").parent("li").addClass("active");
				hasHome=true;
				loadPage($(value).data("url"));
			}
		});
		// 默认欢迎页面、主页
		if(hasHome == false){
			loadMainPage();
		}
	}

	// 添加《li》
	function sidebar_menu_add_li(item) {
		// 返回值
		html = '';
		if (item.children.length == 0) {
			html = "<li><a href='#' data-url='" + item.url + "' data-id='"
					+ item.id + "' data-name='" + item.name + "' data-homepage='" + item.homePage + "' ><i class='"
					+ item.icon + "'></i>" + item.name + "</a></li>";
		} else {
			html = "<li class='treeview'>" + "<a href='#'>" + "<i class='"
					+ item.icon + "'></i>" + "<span>" + item.name + "</span>"
					+ "<span class='pull-right-container'>"
					// + "<span class='label label-primary pull-right'>" +
					// item.children.length + "</span>"
					+ "</span>" + "</a>" + "<ul class='treeview-menu'>";
			$.each(item.children, function(index, value) {
				html = html + sidebar_menu_add_li(value);
			});
			html = html + "</ul>" + "</li>";
		}
		return html;

	}

	
//	$("#navbar-collapse ul li").bind("click",function(){
//		console.log($(this).data("url"));
//	})


})(jQuery);

function loadMainPage(){
	// 获取屏幕宽度
	url = "pages/remen.html";

	//	窗口形式
//	 modals.openWin({
//	 winId:"show_config_table",
//	 title:'修改分组信息',
//	 width:screen.width-20+'px',
//	 url:url
//	 });

	// 默认显示页面
	 loadPage(url);

	 // tab形式
	// $("#tabContainer").tabs({
	// data : [ {
	// id : 'remen',
	// text : '热门推荐',
	// closeable : true,
	// url : url
	// } ],
	// showIndex : 0,
	// loadAll : false
	// })
	// _history.push('remen');
}

$("#show_profile").click(function() {
	loadPage("/pages/user/profile.html");
})

/**
 * 待改
 * 
 * @param url
 * @param params
 * @param callback
 * @returns {*}
 */

function loadPage(url, id, name, paramter, flag_r) {
	// console.log("url="+url+",id="+id+",name="+name);
	// if ($("#tabContainer").data("tabs").find(id) != '') {
	// if (flag_r != null) {
	// $("#tabContainer").data("tabs").reload({
	// id : id,
	// text : name,
	// closeable : true,
	// url : url,
	// paramter : paramter
	// });
	// } else {
	// $("#tabContainer").data("tabs").showTab(id);
	// }
	// } else if ($("#tabContainer").data("tabs").find(id) == '') {
	// $("#tabContainer").data("tabs").addTab({
	// id : id,
	// text : name,
	// closeable : true,
	// url : url,
	// paramter : paramter
	// });
	// _history.push(id);
	// }
	// url =url+ ' body' ;
	$("#mainDiv").load(url, function(response, status, xhr) {
		if (status == "success") {
			if (response) {
				try {
					if($(response).find("form").attr("action")=="/login"){
						window.top.location.href="/";
					}
					var result = jQuery.parseJSON(response);
					if (result.code == 100) {
						$("#mainDiv").html("");
						alert(result.data);
					}
				} catch (e) {
					return response;
				}
			}
		}
	});
}

