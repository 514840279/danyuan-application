
add_plant_lable_type = null;

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
	    	name : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '字段名称不能为空'
		            }
	            }
	        },
	        bindUuid: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '显示名称不能为空'
					}
	    	    }
	    	},
	    	lableOrder : {/* 键名username和input name值对应 */
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
	
	$('#add_plant_lable_type').select2({
	    tags: true,
	    placeholder: "请选择",
	    data:[{id:'',text:'请选择'},{id:'selected',text:'下拉框'},{id:'radio',text:'单选'},{id:'checkbox',text:'多选'}]
	});
	
	$('#add_plant_lable_type').on('select2:select', function (evt) {
		add_plant_lable_type = evt.params.data.id;
	});
}
$(function() {
	// config table
	configTable();
	
	var url= "/sysPlantBindConf/findAll";
	ajaxPost(url,null,loadSelect2Bind)
	
	$("#addnew_type").click(function(){
		$("#add_plant_lable_uuid").val(null);
		$("#add_plant_lable_name").val(null);
		$("#add_plant_lable_bindUuid").val(null);
		$("#add_plant_lable_lableOrder").val(null);
		$("#add_plant_lable_deleteFlag").val(0);
		$('input[name="deleteFlag"]:first').parent().click();
		$("#dbm_type_add_modal").modal({show:true});
		FormValidator()
	})
	
	$("#dbm_type_add_button").click(function(){
		$('#dicName_add_form').data("bootstrapValidator").validate();
		var flag = $('#dicName_add_form').data("bootstrapValidator").isValid();
		if (flag) {
			var params={
					uuid:$("#add_plant_lable_uuid").val(),
					name:$("#add_plant_lable_name").val(),
					bindUuid:add_plant_lable_bindUuid,
					lableOrder:$("#add_plant_lable_lableOrder").val(),
					deleteFlag:$('input[name="deleteFlag"]:checked').val(),
					type:add_plant_lable_type,
					more:$('input[name="more"]:checked').val(),
					createUser:username,
					updateUser:username,
			}
			var url = "/sysPlantLableConf/save";
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
						var submiturl = "/sysPlantLableConf/deleteAll";
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
			$("#add_plant_lable_uuid").val(data[0].uuid);
			$("#add_plant_lable_name").val(data[0].name);
			add_plant_lable_bindUuid =data[0].bindUuid;
			$("#add_plant_lable_bindUuid").val(data[0].bindUuid).trigger("change");
			$("#add_plant_lable_lableOrder").val(data[0].lableOrder);
			$('input[name="deleteFlag"][value="'+data[0].deleteFlag+'"] ').parent().click();
			$("#add_plant_lable_type").val(data[0].type).trigger("change");
			add_plant_lable_type = data[0].type;
			$('input[name="more"][value="'+data[0].more+'"] ').parent().click();
			$("#dbm_type_add_modal").modal({show:true});
			FormValidator()
		}else{
			alert("只能选中一条数据");
		}
			
	})
});
var add_plant_lable_bindUuid = null;
function loadSelect2Bind(result){
	var data = [{id:'',text:'请选择'}]
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.colsName});
	})
	$('#add_plant_lable_bindUuid').select2({
	    tags: true,
	    placeholder: "请选择",
	    data:data
	});
	$('#add_plant_lable_bindUuid').on('select2:select', function (evt) {
		add_plant_lable_bindUuid = evt.params.data.id;
	});
	
}
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
		url : "/sysPlantLableConf/page",
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
			{title : '维度名称',field : 'name',sortable : true,align : 'left'},
			{title : '维度排序',field : 'lableOrder',sortable : true,align : 'left' },
			{title : '展示类型',field : 'type',sortable : true,align : 'left' },
			{title : '展示更多',field : 'more',sortable : true,align : 'left',formatter:showMoreFormatter  },
			{title : '状态',align : 'left',formatter:showbuttonformatter },
			{title : '添加时间',field : 'createTime',sortable : true,align : 'left',formatter:dateTimeFormatter },
			{title : '添加人',field : 'createUser',sortable : true,align : 'left'},
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
	});
}
function showMoreFormatter(e,row,index){
	if(row.more==1){
		return '是';
	}else{
		return '否';
	}
}
function showbuttonformatter(e,row,index){
	if(row.deleteFlag==1){
		return '启用';
	}else{
		return '禁用';
	}
	
}

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#dbm_addr_datagrid').bootstrapTable('resetView');
});
