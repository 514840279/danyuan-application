$(function() {
	// 修改显示
	$("#myModalLabel").text(tabsDesc+"表查询")
	$("#type_text_id").text(tabsDesc);
	// 多条件查询提交按钮绑定事件
	jQuery("#searchbutton").bind("click", function(){
		// 设置本按钮的状态
		doSearch(jQuery(this));
	});
	
	// 列查询
	var url_column = "/zhcx/findAllColumn";
	var param_column={
			info:{
				"username":username,
				tabsUuid:tabsuuid,
			}
	};
	ajaxPost(url_column,param_column,columnFix);
	
});
var paramList=[];
function doSearch(context) {
	paramList=[];
	var inputs = jQuery(".context_input_line .context_input_line_center_char,.context_input_line_center_date,.context_input_line_center_number");
	jQuery.each(inputs, function(index, value) {
		if ("" != jQuery(this).val()) {
			paramList.push({
				"userIndex" :jQuery(this).attr("userIndex") ,
				"userDesc" : jQuery(this).parent().find(".context_input_line_left").text()+"("+jQuery(this).attr("colsName")+")",
				"value" : jQuery(this).val(),
				"operator" : "eq"
			});
		}
	});
	_total=tableRows;
	_type="单表多条件查询";
	$('#column_table_text_id').bootstrapTable('refresh');
}

_result=[]


function columnFix(result){
	// 整理要显示的查询列
	// 要显示的列组织；
	var column =[] ;
	$.each(result,function(index,value){

		var userIndex = value.userIndex;
		var userIcon = value.userIcon;
		var colsDesc = (null != value.colsDesc ? value.colsDesc : "");
		var colsName = (null != value.colsName ? value.colsName : "");
		var colsView = ("" != colsDesc ? colsDesc : colsName);

		
		if(userIndex==""||userIndex==null){
			column.push({
			    "title" : colsView,
			    "field" : colsName,
			    "width":value.colsWidth==null?150:value.colsWidth,
			    "align":value.colsAlign==null?"left":value.colsAlign,
			    "valign":value.colsValign==null?"middle":value.colsValign,
			    "visible":value.pageList==null?true:value.pageList,
			    "switchable":value.colsSwitchable==null?true:value.colsSwitchable,
	    		formatter:function iconFormatter(value, row, index){
	    			if(value==null){
	    				return null;
	    			}
	    			if(coldType.indexOf("DATE")>-1||coldType.indexOf("TIME")>-1){
	    				value =new Date(parseInt(value)).format("yyyy/MM/dd"); 
	    			}
	    			var  f=value;
	    			if(userIcon==null||userIcon==""){
	    				
	    			}else{
	    				f = '<i class="'+userIcon+' text-grey" title="'+value+'" userIndex="'+userIndex+'" ></i> ';
	    			}
	    			return f;
	    		},
			});
		}else if(userIndex!=""){
			column.push({
			    "title" : colsView,
			    "field" : colsName,
			    "width":value.colsWidth==null?150:value.colsWidth,
			    "align":value.colsAlign==null?"left":value.colsAlign,
			    "valign":value.colsValign==null?"middle":value.colsValign,
			    "visible":value.pageList==null?true:value.pageList,
			    "switchable":value.colsSwitchable==null?true:value.colsSwitchable,
	    		formatter:function otherFormatter(value, row, index){
	    			if(value==null){
	    				return null;
	    			}
	    			if(coldType.indexOf("DATE")>-1||coldType.indexOf("TIME")>-1){
	    				value =new Date(parseInt(value)).format("yyyy/MM/dd"); 
	    			}
	    			var f = value
	    			if(userIcon==null||userIcon==""){
	    				 f = '<a class="text-blue" title="'+value+'" userIndex="'+userIndex+'" onclick="forwordYjcx(\''+value+'\',\''+userIndex+'\',\''+colsName+'\')">'+value+' </a> ';
	    			}else{
	    				 f = f = '<i class="'+userIcon+' text-blue" title="'+value+'" userIndex="'+userIndex+'" onclick="forwordYjcx(\''+value+'\',\''+userIndex+'\',\''+colsName+'\')" id="sfzh_search"></i> ';
	    			}
	    			return f;
	    		},
			});
		}
		// 查询列表
		var coldType = (null != value.coldType ? value.coldType : "");
		var pageInput = (false != value.pageInput ? value.pageInput : false);
		if(pageInput&&userIndex) {
			var context = jQuery("#context_input_context");
			var inputline = null;
//			if(coldType.indexOf('CHAR') >= 0){
				inputline = context.find(".context_input_char").clone(false);
				inputline.find(".context_input_line_center_char").attr("colsName", colsName);
//				inputline.find(".context_input_line_center_char").attr("colsRange", "");
				inputline.find(".context_input_line_center_char").attr("userIndex",userIndex);
//				inputline.find(".context_input_line_center_char").attr("coldType", "CHAR");
//			} else if(coldType.indexOf('DATE') >= 0||coldType.indexOf('TIME') >= 0){
//				inputline = context.find(".context_input_date").clone(true);
//				inputline.find(".context_input_line_center_date:eq(0)").attr("colsName", colsName);
//				inputline.find(".context_input_line_center_date:eq(0)").attr("colsRange", "left");
//				inputline.find(".context_input_line_center_date:eq(0)").attr("coldType", "DATE");
//				inputline.find(".context_input_line_center_date:eq(0)").attr("userIndex",userIndex);
//				inputline.find(".context_input_line_center_date:eq(1)").attr("colsName", colsName);
//				inputline.find(".context_input_line_center_date:eq(1)").attr("colsRange", "right");
//				inputline.find(".context_input_line_center_date:eq(1)").attr("userIndex",userIndex);
//				inputline.find(".context_input_line_center_date:eq(1)").attr("coldType", "DATE");
//			} else if(coldType.indexOf('NUMBER') >= 0){
//				inputline = context.find(".context_input_number").clone(false);
//				inputline.find(".context_input_line_center_number:eq(0)").attr("colsName", colsName);
//				inputline.find(".context_input_line_center_number:eq(0)").attr("colsRange", "left");
//				inputline.find(".context_input_line_center_number:eq(0)").attr("coldType", "NUMBER");
//				inputline.find(".context_input_line_center_number:eq(1)").attr("colsName", colsName);
//				inputline.find(".context_input_line_center_number:eq(1)").attr("colsRange", "right");
//				inputline.find(".context_input_line_center_number:eq(1)").attr("coldType", "NUMBER");
//			}
			inputline.attr("class", "context_input_line");
			inputline.css({"display": ""});
			inputline.find(".context_input_line_left").text(colsView + "：");
			jQuery("#context_input_context").append(inputline);
		}
		
		
	})
	// 
	reset("column_table_text_id",tabsName,column,result) ;
}



function forwordYjcx(value,userIndex,colsName){
	var paramList = [];
	paramList.push({
		"userIndex" : userIndex,
		"value" : value,
		"userDesc" : colsName+"("+userIndex+")",
		"operator" : "eq"
	});
	$("#zhcx_sousuo_paramString").val(JSON.stringify(paramList));
	$("#zhcx_type").val("一键查询单表多个不同索引拼接");
	$("#sosuoform").submit();
}
_total=0;
// 表数据加载
function reset(id,tabsName,column,sysColumn) {
//	sysc = [];
//	$.each(sysColumn,function(index,valu){
//		if(valu.userIndex!=null&&valu.userIndex!=""){
//			sysc.push(valu);
//		}
//	});
	// bootstrap table
	$('#'+id).bootstrapTable({
	    url : "/zhcx/findAllTableRow",
	    dataType : "json",
	    // toolbar : '#toolbar', // 工具按钮用哪个容器
//	    cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
//	    sortable : true, // 是否启用排序
//	    sortOrder : "asc", // 排序方式
	    pagination : true, // 分页
	    pageNumber : 1, // 初始化加载第一页，默认第一页
	    pageSize : 9, // 每页的记录行数（*）
	    pageList : [9, 15,20, 25,30, 50, 100 ], // 可供选择的每页的行数（*）
	    strictSearch : true,
	    showColumns : true, // 是否显示所有的列
	    showRefresh : true, // 是否显示刷新按钮
	    minimumCountColumns : 2, // 最少允许的列数
//	    clickToSelect : true, // 是否启用点击选中行
//	    height : 550, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
//	    uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
	    showToggle : true, // 是否显示详细视图和列表视图的切换按钮
	    cardView : false, // 是否显示详细视图
	    detailView : false, // 是否显示父子表
//	    singleSelect : false,
//	    showPaginationSwitch : true,
	    locales : "zh-CN", // 表格汉化
//	    showExport : true, // 是否显示导出
//	    exportDataType : "basic", // basic', 'all', 'selected'.
//	    search : true, // 显示搜索框
	    sidePagination : "server", // 服务端处理分页 server
	    // 设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder
	    // 设置为limit可以获取limit, offset, search, sort, order
	    queryParamsType : "undefined",
	    contentType: "application/json",
	    method : "post", // 使用get请求到服务器获取数据
	    queryParams : function queryParams(params) {
		    var param = {
	    		"type":_type,
	    		pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
	    		"username":username,
	    		tabsName : tabsName,
		        dbType:dbType,
		        esName:esName,
		        total:_total,
		        list:sysColumn,
		        paramList:paramList
		    };
		    return param;
	    },
	    columns : column,
	    responseHandler: function(result){  // 成功时执行
	    	_total = result.total
			return {rows:result.list,total:_total};
		}, 
	    
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) {
		$("#zhxx_mapString").val(JSON.stringify(row));
		$("#zhxx_paramString").val(JSON.stringify(sysColumn));
		$("#zhxx_tableName").val(tabsName);
		$("#zhxx_tableDesc").val(tabsDesc);
		$("#zhxxform").submit();
    }).on('click-row.bs.table', function (e, row, ele,field) {
    	$(".success").removeClass("success");
    	$(ele).addClass("success");
    });
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#'+id).bootstrapTable('resetView');
	});
	
	 
	
}


 

function findError(result) {
    window.parent.window.alert(JSON.stringify(result));
};