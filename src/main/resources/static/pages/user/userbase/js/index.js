$(function() {
	$('#addnew_user').click(function() {
		// 模态框
		$('#admin_userBase_add_modal').modal({
			show:true,
		});
	});
	// 绑定 批量删除事件
	$('#deleteold_user').click(function() {
		var data = $('#admin_userBase_datagrid').bootstrapTable('getAllSelections');
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
						var url = "/sysUserBase/delete";
						ajaxPost(url, param, successDelete, 1000, findError);
					}
				}
			});
		}
	});
	
	// 绑定 添加事件
	$('#editold_user').click(function() {
		var data = $('#admin_userBase_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0||data.length >1){
			alert("必须选中一条数据");
		}else if(data.length > 0){
			$('#upd_userBase_uuid').val(data[0].uuid);
			$('#upd_userBase_userName').val(data[0].userName);
			$('#upd_userBase_persionName').val(data[0].persionName);
			$('#upd_userBase_age').val(data[0].age);
			$('#upd_userBase_sex').val(data[0].sex);
			$('#upd_userBase_email').val(data[0].email);
			$('#upd_userBase_phone').val(data[0].phone);
			$('#upd_userBase_headPic').val(data[0].headPic);
			$('#upd_userBase_discription').val(data[0].discription);
			
			// 模态框
			$('#admin_userBase_upd_modal').modal({
				show:true,
			});
		}
	});
	
	$('#admin_userBase_upd_save_button').click(function() {
		var uuid = $('#upd_userBase_uuid').val();
		var userName = $('#upd_userBase_userName').val();
		var persionName = $('#upd_userBase_persionName').val();
		var age = $('#upd_userBase_age').val();
		var sex = $('#upd_userBase_sex').val();
		var email = $('#upd_userBase_email').val();
		var phone = $('#upd_userBase_phone').val();
		var headPic = $('#upd_userBase_headPic').val();
		var discription = $('#upd_userBase_discription').val();
		
		var params ={
				uuid:uuid,
				userName:userName,
				persionName:persionName,
				age:age,
				sex:sex,
				email:email,
				phone:phone,
				headPic:headPic,
				discription:discription,
		};
		
		ajaxPost("/sysUserBase/saveu", params, successDelete, 1000, findError);
		
	});
	
	
	$('#admin_userBase_add_save_button').click(function() {
		
		var userName = $('#add_userBase_userName').val();
		var persionName = $('#add_userBase_persionName').val();
		var age = $('#add_userBase_age').val();
		var sex = $('#add_userBase_sex').val();
		var email = $('#add_userBase_email').val();
		var phone = $('#add_userBase_phone').val();
		var discription = $('#add_userBase_discription').val();
		
		var password = $('#add_userBase_password').val();
		var repassword = $('#add_userBase_repassword').val();
		
		if(password!=repassword){
			alert("密码不一致");
			return;
		}
		
		var params ={
				userName:userName,
				persionName:persionName,
				age:age,
				sex:sex,
				password:password,
				email:email,
				phone:phone,
				discription:discription,
		};
		console.log(params);
		
		ajaxPost("/sysUserBase/save", params, successDelete, 1000, findError);
		
	});
	
	
	// bootstrap table
	$('#admin_userBase_datagrid').bootstrapTable({
	    url : "/sysUserBase/sysUserBaseList",
	    dataType : "json",
	    toolbar : '#userBase_toolbar', // 工具按钮用哪个容器
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
	    showExport : true, // 是否显示导出
	    showToggle : true, // 是否显示详细视图和列表视图的切换按钮
	    minimumCountColumns : 2, // 最少允许的列数
	    clickToSelect : true, // 是否启用点击选中行
	    height : 600, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
	    uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
	    cardView : false, // 是否显示详细视图
	    detailView : false, // 是否显示父子表
	    singleSelect : false,
	    exportDataType : "all", // basic', 'all', 'selected'.
	    locales : "zh-CN", // 表格汉化
	    search : true, // 显示搜索框
	    refresh : true,
	    striped : true, // 是否显示行间隔色
	    // sidePagination: "server", // 服务端处理分页
	    columns : [ 
	    	{title : '全选',checkbox : true,     align : 'center',valign : 'middle'  },
	    	{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle'  },
		  	{title : '用户名称',field : 'userName',sortable : true,align : 'center'  },
//		  	{title : '用户密码',field : 'password',align : 'center',sortable : true,valign : 'middle'  }, 
		  	{title : '员工姓名',field : 'persionName',align : 'center',sortable : true,valign : 'middle'  }, 
		  	{title : '性别',field : 'sex',align : 'center',sortable : true,valign : 'middle'  }, 
		  	{title : '年龄',field : 'age',align : 'center',sortable : true,valign : 'middle'  }, 
		  	{title : '记录时间',field : 'insertDatetime',align : 'center',sortable : true,valign : 'middle'  },
		  	{title : '更新时间',field : 'updataDatatime',sortable : true,align : 'center'  }, 
		  	{title : '标记',field : 'flag',sortable : true,align : 'center'  } 
    	]
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#admin_userBase_datagrid').bootstrapTable('resetView');
	});
	
});

function successDelete(reslut){
	$('#admin_userBase_datagrid').bootstrapTable('refresh');
}