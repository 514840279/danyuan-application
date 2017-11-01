$(function() {
	$('#search_table_organization_name').select2({
	    placeholder: "组织名",
	    allowClear: true,
	    tags: true,
	});
	var url = '/sysOrganization/sysOrganizationList';
	ajaxPost(url, null, sucessLoadSysOrganizationListSelect2, 1000, findError);
	
	
	$('#addnew_department').click(function() {
		$("#add_department_uuid").val(getUuid());
		$("#add_department_organizationId").val(select2_departmentName);
		$("#add_department_departmentDiscription").val("");
		$('#add_department_deleteFlag[value="0"]').attr('checked',false);
		$('#add_department_deleteFlag[value="1"]').attr('checked',false);
		// 模态框
		$('#admin_department_add_modal').modal({
			show:true,
			
		});
	});
	
	$('#editold_department').click(function(){
		var data = $('#admin_department_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length > 0){
			$("#add_department_uuid").val(data[0].uuid);
			$("#add_department_organizationId").val(data[0].organizationId);
			$("#add_department_departmentName").val(data[0].departmentName);
			$("#add_department_departmentDiscription").val(data[0].discription);
			if(data[0].deleteFlag==1){
				$('#add_department_deleteFlag[value="0"]').attr('checked',false);
				$('#add_department_deleteFlag[value="1"]').attr('checked',true);
			}else if(data[0].deleteFlag==0){
				$('#add_department_deleteFlag[value="0"]').attr('checked',true);
				$('#add_department_deleteFlag[value="1"]').attr('checked',false);
			}
			
			$("#admin_department_add_modal").modal({
				show:true,
				
			})
		}
			
	})
		
	$('#add_department_button').click(function(){
		saveDepartment();
	});
	$('#deleteold_department').click(function(){
		deleteoldDepartment()
	});
	
	 
	// bootstrap table
	$('#admin_department_datagrid').bootstrapTable({
		url : "/sysDepartment/findAllBySearchText",
		dataType : "json",
		toolbar : '#department_toolbar', // 工具按钮用哪个容器
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
		search : true, // 显示搜索框
		sidePagination: "server", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/x-www-form-urlencoded",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
	                 pageNumber: params.pageNumber,    
	                 pageSize: params.pageSize,
	                 organizationId:select2_departmentName
	             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle'},
			{title : '部门名称',field : 'departmentName',sortable : true,align : 'center'},
			{title : '部门描述',field : 'discription',align : 'center',sortable : true,valign : 'middle',},
			{title : '机构id',field : 'organizationId',align : 'center',sortable : true,valign : 'middle',},
			{title : '记录时间',field : 'createTime',align : 'center',sortable : true,	valign : 'middle',},
			{title : '更新时间',field : 'updateTime',sortable : true,align : 'center'},
			{title : '标记',	field : 'deleteFlag',sortable : true,	align : 'center'}
		],  
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
        onLoadSuccess: function(){  //加载成功时执行  
	    },  
	    onLoadError: function(){  //加载失败时执行  
	    }
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#admin_department_datagrid').bootstrapTable('resetView');
	});

});

var select2_departmentName=""
//种子下拉点击事件
$('#search_table_organization_name').on('select2:select', function (evt) {
	select2_departmentName = evt.params.data.id;
	$('#admin_department_datagrid').bootstrapTable('refresh');
	
});

function saveDepartment(){
	var uid  = $('#add_department_uuid').val();
	var organizationId = $('#add_department_organizationId').val();
	var departmentName = $('#add_department_departmentName').val();
	var departmentDiscription = $('#add_department_departmentDiscription').val();
	var flag = $('#add_department_deleteFlag:checked').val();
	if(flag == undefined){
		alert("请选则状态");
		return;
	};
	var info={
			uuid:uid,	
			organizationId:organizationId,
			departmentName:departmentName,
			discription:departmentDiscription,
			deleteFlag:flag
	};
	var submiturl = "/sysDepartment/sysDepartmentAdd";
	ajaxPost(submiturl, info, addDepartmentSuccess, null, findError);
}

function addDepartmentSuccess(result){
	$('#admin_department_add_modal').modal('hide');
	$('#admin_department_datagrid').bootstrapTable('refresh');
	// 模态框提示
	toastr.success("成功修改");
}

function sucessLoadSysOrganizationListSelect2(result){
	var data = [{id:" ",text:" "}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.organizationName});
	});
	$('#search_table_organization_name').select2({data:data});
}

//删除
function deleteDepartment(obj){
	var submiturl = "/sysDepartment/sysDepartmentDelete";
	ajaxPost(submiturl, obj, addDepartmentSuccess, 5000, findError);
};


// 批量删
function deleteoldDepartment(){
	var temp =$('#admin_department_datagrid').bootstrapTable('getAllSelections');
	for (var int=0; int<temp.length; int++) {
		deleteDepartment(temp[int]);
	}
};

