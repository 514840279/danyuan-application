$('#search_table_addrName').select2({
    placeholder : "数据库名称",
    allowClear : true,
    tags : true,
});

$(function() {
	// 加载数据选择框
	// 数据库列表下拉
	ajaxPost('/table/findAllTable', null, successSearchDatabaseInfo, null, findError);
	
	$('.btn-success').click(function() {
		var tablename = jQuery('#add_table_addrName').val();
		_search = tablename;
		ajaxPost('/table/findAllTableColum', tablename, successSearchDatabaseTableInfo, null, findError);
		
	})
})
// 数据库列表下拉
function successSearchDatabaseInfo(result) {
	jQuery('#add_table_addrName').append('<option value=""></option>');
	jQuery.each(result, function(index, value) {
		var addr = '<option value="' + value.tableName + '">' + value.comments + '</option>';
		jQuery('#add_table_addrName').append(addr);
	});
}
var _search = "";
function findError() {
	
}

var _column = []
function successSearchDatabaseTableInfo(result) {
	$('#db_table_datagrid').bootstrapTable('destroy');
	_column = [];
	$.each(result, function(index, value) {
		_column.push({
		    "title" : value.title,
		    "field" : value.field
		});
	})
	reset();
	
}

function reset() {
	
	// bootstrap table
	$('#db_table_datagrid').bootstrapTable({
	    url : "/table/findAllTableRow",
	    dataType : "json",
	    // toolbar : '#toolbar', // 工具按钮用哪个容器
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
	    height : 550, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
	    uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
	    showToggle : true, // 是否显示详细视图和列表视图的切换按钮
	    cardView : false, // 是否显示详细视图
	    detailView : false, // 是否显示父子表
	    singleSelect : false,
	    showPaginationSwitch : true,
	    locales : "zh-CN", // 表格汉化
	    showExport : true, // 是否显示导出
	    exportDataType : "basic", // basic', 'all', 'selected'.
	    search : true, // 显示搜索框
	    sidePagination : "client", // 服务端处理分页 server
	    // 设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder
	    // 设置为limit可以获取limit, offset, search, sort, order
	    queryParamsType : "undefined",
	    // contentType: "application/x-www-form-urlencoded",
	    method : "get", // 使用get请求到服务器获取数据
	    queryParams : function queryParams(params) {
		    var param = {
		        pageNumber : params.pageNumber,
		        pageSize : params.pageSize,
		        searchText : _search,
		    };
		    return param;
	    },
	    columns : _column
	    }
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#db_table_datagrid').bootstrapTable('resetView');
	});
	
}
