$(function() {
	// config table
	configTable();
	// 时间控件
	$('.form_datetime').datetimepicker({
        language:  'zh-CN',  //日期
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 0,
        forceParse: 0
    }).on('changeDate',resetDate);
	// search_table_logs_createUser
	var url = '/sysUserBase/sysUserBaseList';
	ajaxPost(url, null, sucessLoadsysUserBaseListSelect2, 1000, findError);
	
	
});
var strartCreateTime=null;
var endCreateTime=null;
function resetDate(){
	strartCreateTime = $("#strartCreateTime").val();
	endCreateTime = $("#endCreateTime").val();
	$('#dbm_config_table_datagrid').bootstrapTable('refresh')
}
search_table_logs_createUser = null;
function sucessLoadsysUserBaseListSelect2(result){
	var data = [{id:'',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.userName,text:value.persionName})
	})
	$('#search_table_logs_createUser').select2({
	    tags: true,
	    data:data
	});
	$('#search_table_logs_createUser').on('select2:select', function (evt) {
		search_table_logs_createUser = evt.params.data.id;
		$('#dbm_config_table_datagrid').bootstrapTable('refresh')
	});
}
function configTable(){

	// bootstrap table
	$('#dbm_config_table_datagrid').bootstrapTable({
		url : "/sysComnLogs/page",
		dataType : "json",
//		toolbar : '#dbm_config_table_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
		pagination : true, // 分页
		pageNumber : 1, // 初始化加载第一页，默认第一页
		pageSize : 10, // 每页的记录行数（*）
		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
		strictSearch : true,
		showColumns : true, // 是否显示所有的列
		showRefresh : true, // 是否显示刷新按钮
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
//		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
//		showExport: true,                    
//        exportDataType: 'all',
//        exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],  //导出文件类型
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
		sidePagination: "server", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 info:{
                	 createUser: search_table_logs_createUser
                 },
		    	strartCreateTime:strartCreateTime,
		    	endCreateTime:endCreateTime
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '地址',field : 'url',sortable : true,align : 'left'},
			{title : '发起请求人',field : 'createUser',sortable : true,align : 'left'},
			{title : '请求方式',field : 'method',sortable : true,align : 'left',visible:false },
			{title : '方法',field : 'classMethod',sortable : true,align : 'left',visible:false },
			{title : 'java类',field : 'className',sortable : true,align : 'left',visible:false },
			{title : '响应时间',field : 'requestLong',sortable : true,align : 'left'},
			{title : '客户端ip',field : 'ip',sortable : true,align : 'right'},
			{title : '浏览器详细信息',field : 'browser',sortable : true,align : 'left',visible:false },
			{title : '浏览器',field : 'browserType',sortable : true,align : 'left'},
			{title : '客户操作系统',field : 'os',sortable : true,align : 'left'},
			{title : 'android手机型号',field : 'model',sortable : true,align : 'left',visible:false},
			{title : '发起请求时间',field : 'createTime',sortable : true,align : 'left',formatter:dateTimeFormatter},
			{title : '查询的参数',field : 'args',sortable : true,align : 'left',visible:false,formatter:jsonFormatter},
			{title : '查询的参数',field : 'paramList',sortable : true,align : 'left',visible:false},
			{title : '综合查询的表名',field : 'tableName',sortable : true,align : 'left',visible:false},
			{title : '错误信息',field : 'message',sortable : true,align : 'left',visible:false },
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
}
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_config_table_datagrid').bootstrapTable('resetView');
});

//工具方法
var formatJson = function(json, options) {
	var reg = null,
	    formatted = '',
	    pad = 0,
	    PADDING = '  '; // one can also use '\t' or a different number of spaces
	// optional settings
	options = options || {};
	// remove newline where '{' or '[' follows ':'
	options.newlineAfterColonIfBeforeBraceOrBracket = (options.newlineAfterColonIfBeforeBraceOrBracket === true) ? true : false;
	// use a space after a colon
	options.spaceAfterColon = (options.spaceAfterColon === false) ? false : true;
		
	// begin formatting...
		
	// make sure we start with the JSON as a string
	if (typeof json !== 'string') {
	    json = JSON.stringify(json);
	}
	// parse and stringify in order to remove extra whitespace
	json = JSON.parse(json);
	json = JSON.stringify(json);
		
	// add newline before and after curly braces
	reg = /([\{\}])/g;
	json = json.replace(reg, '\r\n$1\r\n');
		
	// add newline before and after square brackets
	reg = /([\[\]])/g;
	json = json.replace(reg, '\r\n$1\r\n');
		
	// add newline after comma
	reg = /(\,)/g;
	json = json.replace(reg, '$1\r\n');
		
	// remove multiple newlines
	reg = /(\r\n\r\n)/g;
	json = json.replace(reg, '\r\n');
		
	// remove newlines before commas
	reg = /\r\n\,/g;
	json = json.replace(reg, ',');
		
	// optional formatting...
	if (!options.newlineAfterColonIfBeforeBraceOrBracket) {
	    reg = /\:\r\n\{/g;
	    json = json.replace(reg, ':{');
	    reg = /\:\r\n\[/g;
	    json = json.replace(reg, ':[');
	}
	if (options.spaceAfterColon) {
	    reg = /\:/g;
	    json = json.replace(reg, ': ');
	}
		
	$.each(json.split('\r\n'), function(index, node) {
	    var i = 0,
	        indent = 0,
	        padding = '';
		
	    if (node.match(/\{$/) || node.match(/\[$/)) {
	        indent = 1;
	    } else if (node.match(/\}/) || node.match(/\]/)) {
	        if (pad !== 0) {
	            pad -= 1;
	        }
	    } else {
	        indent = 0;
	    }
		
	    for (i = 0; i < pad; i++) {
	        padding += PADDING;
	    }
		
	    formatted += padding + node + '\r\n';
	    pad += indent;
	});
		
	return formatted;
};

function jsonFormatter(value,row,index){
	if(row.args == null){
		return null;
	}else if(typeof eval(row.args) == "object"){
		return "<pre><code>"+ formatJson(eval(row.args))+"</code></pre>";
	}else{
		return row.args;
	}
	
}


