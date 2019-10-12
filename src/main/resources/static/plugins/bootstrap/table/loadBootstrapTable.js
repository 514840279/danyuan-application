(function() {
	var initBootstrapTable = function(options) {
		this.options = $.extend({
			id : '',
			url : '',
			sidePagination : 'server',
			cloumns : []
		}, options);
		this.init(options);
	};
	initBootstrapTable.prototype.init = function(options) {
		console.log(options);
		// bootstrap table
		$('#' + options.id).bootstrapTable({
			url : options.url,
			dataType : "json",
			// toolbar : '#toolbar', // 工具按钮用哪个容器
			cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			sortable : true, // 是否启用排序
			sortOrder : "asc", // 排序方式
			striped: true, // 是否显示行间隔色
			pagination : true, // 分页
			pageNumber : 1, // 初始化加载第一页，默认第一页
			pageSize : 10, // 每页的记录行数（*）
//			pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
			// strictSearch : true,
			// showColumns : true, // 是否显示所有的列
			// showRefresh : true, // 是否显示刷新按钮
			// minimumCountColumns : 2, // 最少允许的列数
			// clickToSelect : true, // 是否启用点击选中行
			height : 400, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
			uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
			// showToggle : true, // 是否显示详细视图和列表视图的切换按钮
			// cardView : false, // 是否显示详细视图
			// detailView : false, // 是否显示父子表
			// singleSelect : false,
			// showPaginationSwitch : true,
			locales : "zh-CN", // 表格汉化
			// showExport : true, // 是否显示导出
			// exportDataType : "basic", // basic', 'all', 'selected'.
			// search : true, // 显示搜索框
			sidePagination : options.sidePagination, // 服务端处理分页 server
			// 设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder
			// 设置为limit可以获取limit, offset, search, sort, order
			queryParamsType : "undefined",
			contentType : "application/json",
			method : "post", // 使用get请求到服务器获取数据
			onClickRow: function (row, tr) {
			    // 进行你的操作，如弹出新窗口
			},
			queryParams : function queryParams(params) {
				var param = {
					pageNumber : params.pageNumber,
					pageSize : params.pageSize,
					phonenum : username,
					takeId : takeId,
					province : sessionP
				};
				return param;
			},
			columns : options.cloumns,
			responseHandler : function(result) { // 成功时执行
				if (options.sidePagination == "server") {
					console.log(result)
					return result;
				} else if (options.sidePagination == "client") {
					return {
						rows : result.list
					};
				}
				// },
				// contextMenu: '#context-menu',
				// onContextMenuItem: function(row,$ele){
				//				 
			},
			onLoadError:function(result,res){ // 错误时执行
				if($(result).find("form").attr("action")=="/login"){
					window.location.href="/";
				}
			},
		}).on('dbl-click-row.bs.table', function(e, row, ele, field) {
		}).on('click-row.bs.table', function(e, row, ele, field) {
			$(".info").removeClass("info");
			$(ele).addClass("info");
		});
		// 窗口大小改变时 重设表头
		$(window).resize(function() {
			$('#' + options.id).bootstrapTable('resetView');
		});
	}

	window.initBootstrapTable = initBootstrapTable;
}());
