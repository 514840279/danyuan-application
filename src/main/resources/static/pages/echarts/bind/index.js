//验证
function FormValidator(){
	$('#dicName_add_form').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	colsName : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '字段名称不能为空'
		            }
	            }
	        },
	        colsDesc: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '显示名称不能为空'
					}
	    	    }
	    	},
	    	colsOrder : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '排序不能为空'
	                },
	                numeric:{
			        	min:1,
			        	max:200,
			        	message : '必须是数字型的'
			        }
	            }
	        }
	    }
	});
}
$(function() {
	// config table
	configTable();
	$("#addnew_type").click(function(){
		$("#add_plant_bind_colsName").parent().parent().css({"display":""});
		$("#add_plant_bind_uuid").val(null);
		$("#add_plant_bind_colsName").val(null);
		$("#add_plant_bind_colsDesc").val(null);
		$("#add_plant_bind_colsOrder").val(null);
		$("#add_plant_bind_width").val(null);
		$("#add_plant_bind_chaxun").val(null);
		$("#add_plant_bind_statue").val(0);
		$("#add_plant_bind_deleteFlag").val(0);
		$('input[name="deleteFlag"]:first').parent().click();
		$('input[name="dimeFlag"]:first').parent().click();
		$("#add_plant_bind_according").val(0);
		$('input[name="according"]:first').parent().click();
		$('input[name="paramFlag"]:first').parent().click();
		$("#dbm_type_add_modal").modal({show:true});
		FormValidator()
	})
	
	$("#dbm_type_add_button").click(function(){
		$('#dicName_add_form').data("bootstrapValidator").validate();
		var flag = $('#dicName_add_form').data("bootstrapValidator").isValid();
		if (flag) {
			var params={
					uuid:$("#add_plant_bind_uuid").val(),
					colsName:$("#add_plant_bind_colsName").val(),
					colsDesc:$("#add_plant_bind_colsDesc").val(),
					colsOrder:$("#add_plant_bind_colsOrder").val(),
					statue:$("#add_plant_bind_statue").val(),
					width:$("#add_plant_bind_width").val(),
					chaxun:$("#add_plant_bind_chaxun").val(),
					deleteFlag:$('input[name="deleteFlag"]:checked').val(),
					according:$('input[name="according"]:checked').val(),
					dimeFlag:$('input[name="dimeFlag"]:checked').val(),
					paramFlag:$('input[name="paramFlag"]:checked').val(),
					createUser:username,
					updateUser:username,
			}
			var url = "/sysPlantBindConf/save";
			ajaxPost(url, params, addSuccess);
		}
	})
	
	$('#deleteold_type').click(function(){
		var data = $('#dbm_addr_datagrid').bootstrapTable('getAllSelections');
		if(data.length >= 1){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var submiturl = "/sysPlantBindConf/deleteAll";
						ajaxPost(submiturl, {list:data}, addSuccess);
					}
				}
			});
			
		}
	});
	
	$('#editold_type').click(function(){
		var data = $('#dbm_addr_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			$("#add_plant_bind_colsName").parent().parent().css({"display":"none"});
			$("#add_plant_bind_uuid").val(data[0].uuid);
			$("#add_plant_bind_colsName").val(data[0].colsName);
			$("#add_plant_bind_colsDesc").val(data[0].colsDesc);
			$("#add_plant_bind_colsOrder").val(data[0].colsOrder);
			$("#add_plant_bind_statue").val(data[0].statue);
			$("#add_plant_bind_width").val(data[0].width);
			$("#add_plant_bind_chaxun").val(data[0].chaxun);
			$('input[name="deleteFlag"][value="'+data[0].deleteFlag+'"] ').parent().click();
			$('input[name="dimeFlag"][value="'+data[0].dimeFlag+'"] ').parent().click();
			$('input[name="according"][value="'+data[0].according+'"] ').parent().click();
			$('input[name="paramFlag"][value="'+data[0].paramFlag+'"] ').parent().click();
			$("#dbm_type_add_modal").modal({show:true});
			FormValidator()
		}else{
			alert("只能选中一条数据");
		}
			
	})
});
function addSuccess(resutl){
	$("#dbm_type_add_modal").modal('hide');
	$('#dbm_addr_datagrid').bootstrapTable('refresh');
}
//Modal验证销毁重构
$('#dbm_type_add_modal').on('hidden.bs.modal', function() {
    $("#dicName_add_form").data('bootstrapValidator').destroy();
    $('#dicName_add_form').data('bootstrapValidator', null);
   
});
function configTable(){

	// bootstrap table
	$('#dbm_addr_datagrid').bootstrapTable({
		url : "/sysPlantBindConf/page",
		dataType : "json",
		toolbar : '#dbm_config_table_toolbar', // 工具按钮用哪个容器
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
		singleSelect : true,
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
                 sortOrder:params.sortOrder,
                 sortName:params.sortName,
                 username:username,
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '列名称',field : 'colsName',sortable : true,align : 'left'},
			{title : '显示表头',field : 'colsDesc',sortable : true,align : 'left'},
			{title : '宽度',field : 'width',sortable : true,align : 'left' },
			{title : '字段排序',field : 'colsOrder',sortable : true,align : 'left' },
			{title : '图表统计纬度',field : 'dimeFlag',sortable : true,align : 'left',formatter:showbuttonformatter },
			{title : '图表统计条件',field : 'paramFlag',sortable : true,align : 'left',formatter:showbuttonformatter },
			{title : '是否默认显示列',field : 'according',align : 'left',sortable : true,formatter:showbuttonformatter1 },
			{title : '允许展示列',field : 'deleteFlag',sortable : true,align : 'left',formatter:showbuttonformatter },
			{title : '添加时间',field : 'createTime',sortable : true,align : 'left',formatter:dateTimeFormatter },
			{title : '添加人',field : 'createUser',sortable : true,align : 'left'},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
}

function showbuttonformatter(value,row,index){
	if(value==1){
		return '启用';
	}else{
		return '禁用';
	}
	
}
function showbuttonformatter1(value,row,index){
	if(value==1){
		return '是';
	}else{
		return '否';
	}
	
}

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_addr_datagrid').bootstrapTable('resetView');
});
