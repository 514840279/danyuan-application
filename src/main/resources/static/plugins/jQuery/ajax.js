function ajaxPost(url, params, success, timeout, error, context) {
	var options = {
		type : 'POST',
		url : url,
		data : params,
		dataType : 'json',
		cache : false,
		contentType : 'application/json',
		data : JSON.stringify(params),
		success : function(result) {
			if (result) {
				if (result.code == 'timeout') {
					alert(result.mess);
					window.top.location.href = result.url;
					return;
				} else if (result.code == 'ajaxException') {
					alert(result.mess + result.view);
					return;
				} else if (success) {
					success.call(context, result);
				}
			}
		}
	};

	if (error) {
		options.error = error;
	} else {
		options.error = defaultError;
	}
	if (timeout) {
		options.timeout = timeout;
	}
	if (context) {
		options.context = context;
	}
	jQuery.ajax(options);
}

function defaultError(XMLHttpRequest, textStatus, errorThrown) {
	var msg = '';
	var status = XMLHttpRequest.status;
	switch (status) {
	case 404:
		msg = '对不起，没有找到您要的页面！';
		break;
	case 500:
		msg = '对不起，您请求的服务出错了，请重试或请求其他服务！';
		break;
	}
	if (msg != '') {
		alert(msg);
	}
	return false;
}