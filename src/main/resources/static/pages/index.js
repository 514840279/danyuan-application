_history = [];
(function($) {
    var menu_data = [];
//	        console.log(username);
    // 请求数据地址
    var url = "/sysMenuInfo/findzTreeByUser";
    // 请求数据
    ajaxPost(url, username, loadMenu, null, findError);
    // 加载menu
    function loadMenu(result) {
        // 遍历结果集
        $.each(result, function(index, value) {
	        // 加载数据
	        $(".sidebar-menu").append(sidebar_menu_add_li(value));
        });
        // console.log(JSON.stringify(result));
        $("a[data-url]").click(function(evt) {
	        loadPage($(this).data("url"), $(this).data("id"), $(this).data("name"));
	        $("ul.treeview-menu li").removeClass("active");
	        $(this).parent().addClass("active");
        });
    }
    
    // 添加《li》
    function sidebar_menu_add_li(item) {
        // 返回值
        html = '';
        if (item.children.length == 0) {
	        html = "<li><a href='#' data-url='"+item.url+"' data-id='"+item.id+"' data-name='"+item.name+"' ><i class='"+item.icon+"'></i>" + item.name + "</a></li>";
	        if(item.homePage){
	        	loadPage(item.url);
	        }
        } else {
	        html = "<li class='treeview'>" + "<a href='#'>" + "<i class='"+item.icon+"'></i>" + "<span>" + item.name + "</span>" + "<span class='pull-right-container'>"
	        // + "<span class='label label-primary pull-right'>" + item.children.length + "</span>" 
	        + "</span>" + "</a>" + "<ul class='treeview-menu'>";
	        $.each(item.children, function(index, value) {
		        html = html + sidebar_menu_add_li(value);
	        });
	        html = html + "</ul>" + "</li>";
        }
        return html;
        
    }
    
    function findError() {
    };
    
 // 获取屏幕宽度
	url = "pages/remen.html";
	
//	modals.openWin({
//    	winId:"show_config_table",
//    	title:'修改分组信息',
//    	width:screen.width-20+'px',
//    	url:url
//    });
    
    // 默认显示页面
	
//	loadPage('/pages/zhcx/search/chart.html');
    
//	        $("#tabContainer").tabs({
//	            data : [ {
//	                id : 'remen',
//	                text : '热门推荐',
//	                closeable : true,
//	                url : "pages/remen.html"
//	            } ],
//	            showIndex : 0,
//	            loadAll : false
//	        })
//	        _history.push('remen');
})(jQuery);

$("#show_profile").click(function(){
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
    //         	 console.log("url="+url+",id="+id+",name="+name);
//	        if ($("#tabContainer").data("tabs").find(id) != '') {
//		        if (flag_r != null) {
//			        $("#tabContainer").data("tabs").reload({
//			            id : id,
//			            text : name,
//			            closeable : true,
//			            url : url,
//			            paramter : paramter
//			        });
//		        } else {
//			        $("#tabContainer").data("tabs").showTab(id);
//		        }
//	        } else if ($("#tabContainer").data("tabs").find(id) == '') {
//		        $("#tabContainer").data("tabs").addTab({
//		            id : id,
//		            text : name,
//		            closeable : true,
//		            url : url,
//		            paramter : paramter
//		        });
//		        _history.push(id);
//	        }
//	         	url =url+ ' body' 	; 
        $("#mainDiv").load(url, function(response, status, xhr) {
	        if (status == "success") {
		        if (response) {
			        try {
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

function removeByValue(arr, val) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] == val) {
	        arr.splice(i, 1);
	        break;
        }
    }
}
/**
 * Load a url into a page
 */
var _old_load = jQuery.fn.load;
jQuery.fn.load = function(url, params, callback) {
    //update for HANZO, 2016/12/22
    if (typeof url !== "string" && _old_load) { return _old_load.apply(this, arguments); }
    
    var selector, type, response, self = this, off = url.indexOf(" ");
    if (off > -1) {
        selector = jQuery.trim(url.slice(off));
        url = url.slice(0, off);
    }
    if (jQuery.isFunction(params)) {
        callback = params;
        params = undefined;
    } else if (params && typeof params === "object") {
        type = "POST";
    }
    if (self.length > 0) {
        jQuery.ajax({
            url : url,
            beforeSend : function(xhr) {
	            xhr.setRequestHeader('X-Requested-With', {
		            toString : function() {
			            return '';
		            }
	            });
            },
            type : type || "GET",
            dataType : "html",
            data : params
        }).done(function(responseText) {
	        response = arguments;
	        
	        var reponseHtml = jQuery.parseHTML();
	        //  			console.log($(responseText).find(selector).toArray());
	        self.html(selector ? jQuery("<div>").append(jQuery.parseHTML(responseText)).find(selector) : responseText);
        }).always(callback && function(jqXHR, status) {
	        self.each(function() {
		        callback.apply(this, response || [ jqXHR.responseText, status, jqXHR ]);
	        });
        });
    }
    
    return this;
};
        
/** * uuid ************ */
function getUuid() {
    var len = 32;// 32长度
    var radix = 16;// 16进制
    var chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'.split('');
    var uuid = [], i;
    radix = radix || chars.length;
    if (len) {
        for (i = 0; i < len; i++)
	        uuid[i] = chars[0 | Math.random() * radix];
    } else {
        var r;
        uuid[8] = uuid[13] = uuid[18] = uuid[23] = '-';
        uuid[14] = '4';
        for (i = 0; i < 36; i++) {
	        if (!uuid[i]) {
		        r = 0 | Math.random() * 16;
		        uuid[i] = chars[(i == 19) ? (r & 0x3) | 0x8 : r];
	        }
        }
    }
    return uuid.join('');
}

function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate + " " + date.getHours() + seperator2 + date.getMinutes() + seperator2 + date.getSeconds();
    return currentdate;
}

/** ** 错误函数 **** */
// 错误消息
function findError(result) {
    window.parent.window.alert(JSON.stringify(result));
    // window.parent.window.alert("出错了");
};

toastr.options = {
    "closeButton" : false, // 是否显示关闭按钮
    "debug" : false, // 是否使用debug模式
    "positionClass" : "toast-top-full-width",// 弹出窗的位置
    "showDuration" : "300",// 显示的动画时间
    "hideDuration" : "1000",// 消失的动画时间
    "timeOut" : "5000", // 展现时间
    "extendedTimeOut" : "1000",// 加长展示时间
    "showEasing" : "swing",// 显示时的动画缓冲方式
    "hideEasing" : "linear",// 消失时的动画缓冲方式
    "showMethod" : "fadeIn",// 显示时的动画方式
    "hideMethod" : "fadeOut" // 消失时的动画方式
};

//日期 时间的格式化
function dateTimeFormatter(value,row,index){
	return  new Date(value).toLocaleString(); 
};