/**
 * Load a url into a page
 */
var _old_load = jQuery.fn.load;
jQuery.fn.load = function(url, params, callback) {
	// update for HANZO, 2016/12/22
	if (typeof url !== "string" && _old_load) {
		return _old_load.apply(this, arguments);
	}

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
				xhr.setRequestHeader('X-Requested-With', {toString : function() {return '';	}});
			},
			type : type || "GET",
			dataType : "html",
			data : params
		}).done(function(responseText) {
			response = arguments;

			var reponseHtml = jQuery.parseHTML();
			// console.log($(responseText).find(selector).toArray());
			self.html(selector ? jQuery("<div>").append(jQuery.parseHTML(responseText)).find(selector): responseText);
		}).always(callback&& function(jqXHR, status) {
			self.each(function() {
				callback.apply(this,response|| [ jqXHR.responseText,status, jqXHR ]);
			});
		});
	}

	return this;
};

/** * uuid ************ */
function getUuid() {
	var len = 32;// 32长度
	var radix = 16;// 16进制
	var chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
			.split('');
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
	var currentdate = date.getFullYear() + seperator1 + month + seperator1
			+ strDate + " " + date.getHours() + seperator2 + date.getMinutes()
			+ seperator2 + date.getSeconds();
	return currentdate;
}

/** ** 错误函数 **** */
//错误消息
function findError(result) {
	if($(result.responseText).find("form").attr("action")=="/login"){
		window.location.href="/";
	}
	var msg = '';
	var status = result.status;
	switch (status) {
	case 0:
		msg = '服务器请求失败！';
		break;
	case 404:
		msg = '对不起，没有找到您要的页面！';
		break;
	case 500:
		msg = '对不起，您请求的服务出错了，请重试或请求其他服务！';
		break;
	}
	if (msg != '') {
		alert(msg);
	}else{
		alert(JSON.stringify(result));
		console.log(result);
	}
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
// Stirng对象的原型方法
String.prototype.replaceAll = function(s1, s2) {
	return this.replace(new RegExp(s1, "gm"), s2);
}
// 日期 时间的格式化
function dateTimeFormatter(value, row, index) {
	if(value==null||value==''){
		return;
	}
	return new Date(value).toLocaleString();
};