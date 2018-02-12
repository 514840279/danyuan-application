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
		}else if(data.length == 1){
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
		}else{
			alert("只能选中一条数据");
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
//		showRefresh : true, // 是否显示刷新按钮
		minimumCountColumns : 1, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
//		cardView : false, // 是否显示详细视图
//		detailView : true, // 是否显示父子表
		singleSelect : true,
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
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
//			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle'},
			{title : '部门名称',field : 'departmentName',sortable : true,align : 'left'},
			{title : '部门描述',field : 'discription',align : 'left',sortable : true,valign : 'middle',},
//			{title : '机构id',field : 'organizationId',align : 'center',sortable : true,valign : 'middle',},
//			{title : '记录时间',field : 'createTime',align : 'center',sortable : true,	valign : 'middle',},
//			{title : '更新时间',field : 'updateTime',sortable : true,align : 'center'},
//			{title : '标记',	field : 'deleteFlag',sortable : true,	align : 'center'}
		],  
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		}, 
        onLoadSuccess: function(){  //加载成功时执行  
	    },  
	    onLoadError: function(){  //加载失败时执行  
	    },
//	    onExpandRow:function(index, row, $detail) {  
//            InitSubTable(index, row, $detail);  
//        } ,
	    onClickRow:function(index){
	    	$("#admin_roles_datagrid").bootstrapTable("destroy");
	    	InitSubTable(index);
	    }
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#admin_department_datagrid').bootstrapTable('resetView');
	});

});

//$("#admin_roles_datagrid").bootstrapTable();
function InitSubTable(index) { 
//	alert(JSON.stringify(index));
//    var cur_table = $detail.html(''
//    		+'<div id="roles_toolbar" class="btn-group">'
//    		+'<button type="button" class="btn btn-success" id="addnew_roles">新增角色</button>'
//    		+'<button type="button" class="btn btn-info" id="editold_roles">编辑角色</button>'
//    		+'<button type="button" class="btn btn-danger" id="deleteold_roles">删除角色</button>'
//    		+'<button type="button" class="btn btn-danger" id="edit_jurisd_roles">管理资源</button>'
//    		+'</div>'
//    		+'<table class="table table-striped table-bordered" id="admin_roles_datagrid" data-toggle="admin_roles_datagrid">'
//    		+'</table>'
//		+'').find('#admin_roles_datagrid');  
	
//	$(cur_table).bootstrapTable({  
    $("#admin_roles_datagrid").bootstrapTable({  
        url:'/sysRoles/findAllBySearchText',  
        dataType : "json",
		toolbar : '#roles_toolbar', // 工具按钮用哪个容器
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
		singleSelect : true,
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
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
                 departmentId:index.uuid
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'	},
//			{title : 'uuid',field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
//			{title : '部门名称',field : 'departmentId',sortable : true,align : 'center'},
			{title : '角色名称',field : 'roleName',sortable : true,align : 'center'},
			{title : '角色描述',field : 'discription',sortable : true,align : 'center'},
//			{title : '记录时间',field : 'createTime',align : 'center',	sortable : true,valign : 'middle'},
//			{title : '更新时间',field : 'updataTime',sortable : true,align : 'center'},
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
    }); 
    
    $('#addnew_roles').click(function() {
		$("#add_roles_uuid").val(getUuid());
		$("#add_roles_departmentId").val(index.uuid);
		$("#add_roles_roleName").val("");
		$("#add_roles_discription").val("");
		$('#add_roles_deleteFlag[value="0"]').attr('checked',false);
		$('#add_roles_deleteFlag[value="1"]').attr('checked',false);
		// 模态框
		$('#admin_roles_add_modal').modal({
			show:true,
			
		});
	});
	
	$('#editold_roles').click(function(){
		var data = $("#admin_roles_datagrid").bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		} else if(data.length ==1 ){
			$("#add_roles_uuid").val(data[0].uuid);
			$("#add_roles_departmentId").val(data[0].departmentId);
			$("#add_roles_roleName").val(data[0].roleName);
			$("#add_roles_discription").val(data[0].discription);
			if(data[0].deleteFlag==1){
				$('#add_roles_deleteFlag[value="0"]').attr('checked',false);
				$('#add_roles_deleteFlag[value="1"]').attr('checked',true);
			}else if(data[0].deleteFlag==0){
				$('#add_roles_deleteFlag[value="0"]').attr('checked',true);
				$('#add_roles_deleteFlag[value="1"]').attr('checked',false);
			}
			
			$("#admin_roles_add_modal").modal({
				show:true,
			})
		}else{
			alert("只能选中一条数据");
		}
			
	})
		
	$('#add_roles_button').click(function(){
		saveRoles();
	});
	$('#deleteold_roles').click(function(){
		var temp =$("#admin_roles_datagrid").bootstrapTable('getAllSelections');
		for (var int=0; int<temp.length; int++) {
			deleteRoles(temp[int]);
		}
	});
	
	$('#edit_jurisd_roles').click(function(){
		var data = $("#admin_roles_datagrid").bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		} else if(data.length ==1 ){
			
			// themleaf
			// 调用 权限列表树
			// 查看所有权限并进行打钩
			winId="jurisdiction_selelect";
			var iconName;
			if(data[0].uuid)
			   //iconName=encodeURIComponent($("#add_menu_icon").val());
			modals.openWin({
		    	winId:winId,
		    	title:'资源管理',
		    	width:'1000px',
		    	url:"/icon/nodecorator/ztree?uuid="+data[0].uuid
		    });
			
			_role_uuid=data[0].uuid;
			$("#edit_jurisd_roles_add_modal").modal({
				show:true,
			})
		}else{
			alert("只能选中一条数据");
		}
	})
//return oTableInit;  
};  
var _role_uuid="";
var select2_departmentName=""
//种子下拉点击事件
$('#search_table_organization_name').on('select2:select', function (evt) {
	select2_departmentName = evt.params.data.id;
	$('#admin_department_datagrid').bootstrapTable('refresh');
	
});

function saveRoles(){
	var uid  = $('#add_roles_uuid').val();
	var departmentId = $('#add_roles_departmentId').val();
	var roleName = $('#add_roles_roleName').val();
	var discription = $('#add_roles_discription').val();
	var flag = $('#add_roles_deleteFlag:checked').val();
	if(flag == undefined){
		alert("请选则状态");
		return;
	};
	var info={
		uuid:uid,	
		departmentId:departmentId,
		roleName:roleName,
		discription:discription,
		deleteFlag:flag
	};
	var submiturl = "/sysRoles/save";
	ajaxPost(submiturl, info, addRolesSuccess, null, findError);
}
function addRolesSuccess(result){
	$('#admin_roles_add_modal').modal('hide');
	$('#admin_roles_datagrid').bootstrapTable('refresh');
	// 模态框提示
//	toastr.success("成功修改");
}
function saveDepartment(){
	var uid  = $('#add_department_uuid').val();
	var organizationId = $('#add_department_organizationId').val();
	var departmentName = $('#add_department_departmentName').val();
	var departmentDiscription = $('#add_department_departmentDiscription').val();
	var flag = $('#add_roles_deleteFlag:checked').val();
//	if(flag == undefined){
//		alert("请选则状态");
//		return;
//	};
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
	var data = [{id:" ",text:"请选择"}];
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

//删除
function deleteRoles(obj){
	var submiturl = "/sysRoles/delete";
	ajaxPost(submiturl, obj, addRolesSuccess, 5000, findError);
};


// 批量删
function deleteoldDepartment(){
	var temp =$('#admin_department_datagrid').bootstrapTable('getAllSelections');
	for (var int=0; int<temp.length; int++) {
		deleteDepartment(temp[int]);
	}
};

