
//验证
function userAddFormValidator(){
	$('#dicName_add_form').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	code : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '代码不能为空'
//	                } ,
//	                remote: {
//	                    message: '已经有了',
//	                    url: '/sysDicName/checkCode',
//	                    type: 'POST',//请求方式
//	                    delay:2000 //这里特别要说明，必须要加此属性，否则用户输入一个字就会访问后台一次，会消耗大量的系统资源，
	                }
	            }
	        },
	        name: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '名称不能为空'
					},
					stringLength : {/* 长度提示 */
	                    max : 10,
	                    message : '名称必须在10之'
	                }
	    	    }
	    	},
	    	type : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '类型不能为空'
	                }
	            }
	        }
	    }
	});
}

//验证
function dicKeyAddFormValidator(){
	$('#dickey_add_form').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	keyword : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '不能为空'
//	                } ,
//	                remote: {
//	                    message: '已经有了',
//	                    url: '/sysDicName/checkCode',
//	                    type: 'POST',//请求方式
//	                    delay:2000 //这里特别要说明，必须要加此属性，否则用户输入一个字就会访问后台一次，会消耗大量的系统资源，
	                }
	            }
	        },
	        keyValue: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '不能为空'
	                }
	    	    }
	    	},
	    	keyOrder : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '类型不能为空'
	                },
	                numeric:{
			        	min:1,
			        	message : '必须是数字型的'
			        }
	            }
	        }
	    }
	});
}
$(function() {
	$('#addnew_user').click(function() {
		$('#add_dicName_uuid').val("");
		$('#add_dicName_name').val("");
		$('#add_dicName_code').val("");
		$('#add_dicName_buttonType').find("input:first").parent().click();

		// 模态框
		$('#admin_dicName_add_modal').modal({
			show:true,
		});
		userAddFormValidator()
	});
	// 绑定 批量删除事件
	$('#deleteold_user').click(function() {
		var data = $('#admin_dicName_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var param = {
							"list":data,
						};
						// 重载
						var url = "/sysDicName/delete";
						ajaxPost(url, param, successDelete, 1000, findError);
					}
				}
			});
		}
	});
	
	// 绑定 修改事件
	$('#editold_user').click(function() {
		var data = $('#admin_dicName_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0||data.length >1){
			alert("必须选中一条数据");
		}else if(data.length > 0){
			$('#add_dicName_uuid').val(data[0].uuid);
			$('#add_dicName_name').val(data[0].name);
			$('#add_dicName_code').val(data[0].code);
			$('#add_dicName_buttonType').find("input[value='"+data[0].buttonType+"']").parent().click();
			
			// 模态框
			$('#admin_dicName_add_modal').modal({
				show:true,
			});
			userAddFormValidator()
		}
	});
	
	
	$('#admin_dicName_add_save_button').click(function() {
		
		$('#dicName_add_form').data("bootstrapValidator").validate();
		var flag = $('#dicName_add_form').data("bootstrapValidator").isValid();
		if (flag) {
			var params ={
					uuid:$('#add_dicName_uuid').val(),
					name:$('#add_dicName_name').val(),
					code:$('#add_dicName_code').val(),
					buttonType:$('#add_dicName_buttonType').find('input:checked').val(),
					createUser:username,
					updateUser:username,
			};
			console.log(params);
			ajaxPost("/sysDicName/save", params, successDelete, 10000, findError);
		}
	});
	
	// ------------------------------------------------------------------------------------
	$('#addnew_dickey').click(function() {
		var row = $('#admin_dicName_datagrid').bootstrapTable('getAllSelections')[0];
		$('#add_dickey_nameUuid').val(row.uuid);
		$('#add_dickey_keyword').val("");
		$('#add_dickey_keyValue').val("");
		$('#add_dickey_uuid').val("");
		$('#add_dickey_keyOrder').val("");
		// 模态框
		$('#admin_dickey_add_modal').modal({
			show:true,
		});
		dicKeyAddFormValidator()
	});
	// 绑定 批量删除事件
	$('#deleteold_dickey').click(function() {
		var data = $('#admin_dicKeyList_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var param = {
							"list":data,
						};
						// 重载
						var url = "/sysDicKeyList/delete";
						ajaxPost(url, param, successDeletekey, 1000, findError);
					}
				}
			});
		}
	});
	
	// 绑定 修改事件
	$('#editold_dickey').click(function() {
		var data = $('#admin_dicKeyList_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0||data.length >1){
			alert("必须选中一条数据");
		}else if(data.length > 0){
			$('#add_dickey_keyword').val(data[0].keyword);
			$('#add_dickey_keyValue').val(data[0].keyValue);
			$('#add_dickey_uuid').val(data[0].uuid);
			$('#add_dickey_keyOrder').val(data[0].keyOrder);
			$('#add_dickey_nameUuid').val(data[0].nameUuid);
			// 模态框
			$('#admin_dickey_add_modal').modal({
				show:true,
			});
			dicKeyAddFormValidator()
		}
	});
	
	
	$('#admin_dickey_add_save_button').click(function() {
		
		$('#dickey_add_form').data("bootstrapValidator").validate();
		var flag = $('#dickey_add_form').data("bootstrapValidator").isValid();
		if (flag) {
			var params ={
					keyword:$('#add_dickey_keyword').val(),
					keyValue:$('#add_dickey_keyValue').val(),
					keyOrder:$('#add_dickey_keyOrder').val(),
					uuid:$('#add_dickey_uuid').val(),
					nameUuid:$('#add_dickey_nameUuid').val(),
					createUser:username,
					updateUser:username,
			};
			ajaxPost("/sysDicKeyList/save", params, successDeletekey, 10000, findError);
		}
	});
	
	
	
	// bootstrap table
	$('#admin_dicName_datagrid').bootstrapTable({
	    url : "/sysDicName/page",
	    dataType : "json",
	    toolbar : '#dicName_toolbar', // 工具按钮用哪个容器
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
//	    showExport : true, // 是否显示导出
	    showToggle : true, // 是否显示详细视图和列表视图的切换按钮
	    minimumCountColumns : 2, // 最少允许的列数
	    clickToSelect : true, // 是否启用点击选中行
	    height : 600, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
	    uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
	    cardView : false, // 是否显示详细视图
	    detailView : false, // 是否显示父子表
	    singleSelect : true,
	    exportDataType : "all", // basic', 'all', 'selected'.
	    locales : "zh-CN", // 表格汉化
	    search : true, // 显示搜索框
	    refresh : true,
	    striped : true, // 是否显示行间隔色
	    sidePagination: "server", // 服务端处理分页
	    queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
	    queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 info:{name: params.searchText},
                 sortOrder:params.sortOrder,
                 sortName:params.sortName
             }; 
             return param;
		},
	    columns : [ 
	    	{title : '全选',checkbox : true,     align : 'center',valign : 'middle'  },
//	    	{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle'  },
		  	{title : '名称',field : 'name',sortable : true,align : 'left'  },
		  	{title : '调用代码',field : 'code',align : 'left',sortable : true,valign : 'middle'  }, 
		  	{title : '控件类型',field : 'buttonType',align : 'left',sortable : true,valign : 'middle', formatter:buttonTypeFormatter  }, 
		  	{title : '录入时间',field : 'createTime',align : 'left',sortable : true,valign : 'middle' ,visible:false,formatter:dateTimeFormatter }, 
		  	{title : '更新时间',field : 'updateTime',align : 'center' ,visible:false,formatter:dateTimeFormatter }, 
    	] ,
    	responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		},
	    onClickRow:function(row){
	    
	    	$("#admin_dicKeyList_datagrid").bootstrapTable("destroy");
	    	InitSubRoleTable(row);
	    },
	    
	});
	
});
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#admin_dicName_role_datagrid').bootstrapTable('resetView');
});
////Modal验证销毁重构
$('#admin_userBase_add_modal').on('hidden.bs.modal', function() {
    $("#dicName_add_form").data('bootstrapValidator').destroy();
    $('#dicName_add_form').data('bootstrapValidator', null);
    
});

////Modal验证销毁重构
$('#admin_dickey_add_modal').on('hidden.bs.modal', function() {
    $("#dickey_add_form").data('bootstrapValidator').destroy();
    $('#dickey_add_form').data('bootstrapValidator', null);
    
});
// 格式化--------------------------------------------
function buttonTypeFormatter(e,row,index){
	if(row.buttonType=='selected'){return "下拉选项"}
	else if (row.buttonType=='radio'){return "单选按钮"}
	else if (row.buttonType=='checked'){return "多选按钮"}
}

// --------------------------------------------------

function InitSubRoleTable(row) { 
    $("#admin_dicKeyList_datagrid").bootstrapTable({  
        url:'/sysDicKeyList/page',  
        dataType : "json",
		toolbar : '#dickey_toolbar', // 工具按钮用哪个容器
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
		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
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
                 info:{nameUuid:row.uuid},
                 sortOrder:params.sortOrder,
                 sortName:params.sortName
             }; 
             return param;
		},
		columns : [
			{title : 'checked',field : 'checked',checkbox : true,align : 'center',valign : 'middle'	},
//			{title : 'uuid',field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
//			{title : '部门名称',field : 'departmentId',sortable : true,align : 'center'},
			{title : '显示数据',field : 'keyword',sortable : true,align : 'left'},
			{title : '值',field : 'keyValue',sortable : true,align : 'left'},
			{title : '排序',field : 'keyOrder',sortable : true,align : 'left',sortable:true},
			{title : '记录时间',field : 'createTime',align : 'center',	sortable : true,valign : 'middle',visible:false,formatter:dateTimeFormatter},
			{title : '更新时间',field : 'updateTime',sortable : true,align : 'center',visible:false,formatter:dateTimeFormatter},
//			{title : '标记',	field : 'deleteFlag',	sortable : true,align : 'center'}
		],
        responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
        onLoadSuccess: function(){  //加载成功时执行  
	    },  
	    onLoadError: function(){  //加载失败时执行  
	    },
//	    onExpandRow:function(index, row, $detail) {  
//            //InitSubTable(index, row, $detail);  
//        }  
//	    onClickRow:function(index){
//	    	console.log(index);
//	    },
//	    onCheck: function (row) {
//	    	updateUserRole(row,index);
//	    },onUncheck: function (row) {
//	    	updateUserRole(row,index);
//	    },
    }); 
}


function successDelete(result){
	$('#admin_dicName_datagrid').bootstrapTable('refresh');
	$('#admin_dicName_add_modal').modal('hide');
}
function successDeletekey(result){
	$('#admin_dicKeyList_datagrid').bootstrapTable('refresh');
	$('#admin_dickey_add_modal').modal('hide');
}