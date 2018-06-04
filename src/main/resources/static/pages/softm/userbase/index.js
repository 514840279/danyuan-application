// 验证
function userUpdFormValidator(){
	$('#user_upd_form').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	persionName : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '姓名不能为空'
	                },
	                stringLength : {/* 长度提示 */
	                    max : 50,
	                    message : '姓名长度必须在50之内'
	                }
	            }
	        },
	    	sex : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '性别不能为空'
	                }
	            }
	        },
	    	email : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '电子邮箱不能为空'
	                }
	            }
	        }
	    }
	});
}

//验证
function userAddFormValidator(){
	$('#user_add_form').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	userName : {/* 键名username和input name值对应 */
	            message : '网站地址无效',
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '用户名称不能为空'
	                } ,
	                remote: {
	                    message: '已经注册过了',
	                    url: '/sysUserBase/checkUserName',
	                    type: 'POST',//请求方式
//	                    data : '',//这里默认会传递该验证字段的值到后端
	                    delay:2000 //这里特别要说明，必须要加此属性，否则用户输入一个字就会访问后台一次，会消耗大量的系统资源，
	                }
	            }
	        },
	    	password: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '密码不能为空'
					},
					stringLength : {/* 长度提示 */
						min : 4,
	                    max : 50,
	                    message : '密码长度必须在4~50之间'
	                },
	    	        identical: {
	    	            field: 'repassword',
	    	            message: '两次输入的密码不相符'
	    	        }
	    	    }
	    	},
	    	repassword: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '密码不能为空'
					},
					stringLength : {/* 长度提示 */
						min : 4,
	                    max : 50,
	                    message : '密码长度必须在4~50之间'
	                },
	    	        identical: {
	    	            field: 'password',
	    	            message: '两次输入的密码不相符'
	    	        }
	    	    }
	    	},
	    	
	    	
	    	
	    	persionName : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '姓名不能为空'
	                },
	                stringLength : {/* 长度提示 */
	                    max : 50,
	                    message : '姓名长度必须在50之内'
	                }
	            }
	        },
	    	sex : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '性别不能为空'
	                }
	            }
	        },
	    	email : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '电子邮箱不能为空'
	                }
	            }
	        }
	    }
	});
}

function userchangeFormValidator(){
	$('#user_change_form').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	password: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '密码不能为空'
					},
					stringLength : {/* 长度提示 */
						min : 4,
	                    max : 50,
	                    message : '密码长度必须在4~50之间'
	                },
	    	        identical: {
	    	            field: 'repassword',
	    	            message: '两次输入的密码不相符'
	    	        }
	    	    }
	    	},
	    	repassword: {
	    	    validators: {
	    	    	notEmpty : {/* 非空提示 */
					    message : '密码不能为空'
					},
					stringLength : {/* 长度提示 */
						min : 4,
	                    max : 50,
	                    message : '密码长度必须在4~50之间'
	                },
	    	        identical: {
	    	            field: 'password',
	    	            message: '两次输入的密码不相符'
	    	        }
	    	    }
	    	}
	    }
	});
}
$(function() {
	$('#addnew_user').click(function() {
		// 模态框
		$('#admin_userBase_add_modal').modal({
			show:true,
		});
		userAddFormValidator()
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
	
	// 绑定 修改事件
	$('#editold_user').click(function() {
		var data = $('#admin_userBase_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0||data.length >1){
			alert("必须选中一条数据");
		}else if(data.length > 0){
			$('#upd_userBase_uuid').val(data[0].uuid);
			$('#upd_userBase_userName').val(data[0].userName);
			$('#upd_userBase_persionName').val(data[0].persionName);
			$('#upd_userBase_age').val(data[0].age);
			
			if(data[0].sex=="男"){
				$('.upd_userBase_sex[value="男"]').parent().click();
			}else if(data[0].sex=="女"){
				console.log(data[0].sex)
				$('.upd_userBase_sex[value="女"]').parent().click();
			}
			$('#upd_userBase_email').val(data[0].email);
			$('#upd_userBase_phone').val(data[0].phone);
//			$('#upd_userBase_headPic').val(data[0].headPic);
			$('#upd_userBase_discription').val(data[0].discription);
			
			// 模态框
			$('#admin_userBase_upd_modal').modal({
				show:true,
			});
			userUpdFormValidator()
		}
	});
	
	// 修改button事件
	$('#admin_userBase_upd_save_button').click(function() {
		
		$('#user_upd_form').data("bootstrapValidator").validate();
		var flag = $('#user_upd_form').data("bootstrapValidator").isValid();
		if (flag) {
			var params ={
				uuid:$('#upd_userBase_uuid').val(),
				userName:$('#upd_userBase_userName').val(),
				persionName:$('#upd_userBase_persionName').val(),
				age:$('#upd_userBase_age').val(),
				sex:$('.upd_userBase_sex:checked').val(),
				email:$('#upd_userBase_email').val(),
				phone:$('#upd_userBase_phone').val(),
//				headPic:$('#upd_userBase_headPic').val(),
				discription:$('#upd_userBase_discription').val(),
			};
			ajaxPost("/sysUserBase/saveu", params, successUpdsysuser, 1000, findError);
		}
	});
	
	
	$('#admin_userBase_add_save_button').click(function() {
		
		$('#user_add_form').data("bootstrapValidator").validate();
		var flag = $('#user_add_form').data("bootstrapValidator").isValid();
		if (flag) {
			var params ={
				userName:$('#add_userBase_userName').val(),
				persionName:$('#add_userBase_persionName').val(),
				age:$('#add_userBase_age').val(),
				sex:$('.add_userBase_sex').val(),
				password:$('#add_userBase_password').val(),
				email:$('#add_userBase_email').val(),
				phone:$('#add_userBase_phone').val(),
				discription:$('#add_userBase_discription').val(),
			};
			ajaxPost("/sysUserBase/save", params, successAddsysuser, 10000, findError);
		}
	});
	
	$("#change_user_password").click(function(){
		var data = $('#admin_userBase_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0||data.length >1){
			alert("必须选中一条数据");
		}else if(data.length > 0){
			// 模态框
			$('#change_user_password_modal').modal({
				show:true,
			});
			userchangeFormValidator()
		}
	})
	
	
	$("#admin_userBase_change_password_button").click(function(){
		$('#user_change_form').data("bootstrapValidator").validate();
		var flag = $('#user_change_form').data("bootstrapValidator").isValid();
		if (flag) {
			var data = $('#admin_userBase_datagrid').bootstrapTable('getAllSelections');
			var params ={
				info:{	
					uuid:data[0].uuid,
				password:$('#change_userBase_password').val(),
				}
			};
			ajaxPost("/sysUserBase/changePassword", params, successchangesysuser, 10000, findError);
		}
	})
	
	
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
	    // sidePagination: "server", // 服务端处理分页
	    columns : [ 
	    	{title : '全选',checkbox : true,     align : 'center',valign : 'middle'  },
//	    	{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle'  },
		  	{title : '用户名称',field : 'userName',sortable : true,align : 'left'  },
//		  	{title : '用户密码',field : 'password',align : 'center',sortable : true,valign : 'middle'  }, 
		  	{title : '员工姓名',field : 'persionName',align : 'left',sortable : true,valign : 'middle'  }, 
		  	{title : '性别',field : 'sex',align : 'left',sortable : true,valign : 'middle'  }, 
		  	{title : '年龄',field : 'age',align : 'left',sortable : true,valign : 'middle' ,visible:false }, 
		  	{title : '联系电话',field : 'phone',align : 'left',sortable : true,valign : 'middle' ,visible:false }, 
		  	{title : '联系邮箱',field : 'email',align : 'left',sortable : true,valign : 'middle'  }, 
//		  	{title : '记录时间',field : 'createTime',align : 'center',sortable : true,valign : 'middle'  },
		  	{title : '更新时间',field : 'updateTime',sortable : true,align : 'center' ,visible:false }, 
//		  	{title : '标记',field : 'flag',sortable : true,align : 'center'  } 
    	] ,
	    onClickRow:function(index){
	    	$("#admin_userBase_role_datagrid").bootstrapTable("destroy");
	    	InitSubRoleTable(index);
	    },
		
	});
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#admin_userBase_datagrid').bootstrapTable('resetView');
	});
	
});
////Modal验证销毁重构
$('#admin_userBase_upd_modal').on('hidden.bs.modal', function() {
    $("#user_upd_form").data('bootstrapValidator').destroy();
    $('#user_upd_form').data('bootstrapValidator', null);
    
});

$('#admin_userBase_add_modal').on('hidden.bs.modal', function() {
    $("#user_add_form").data('bootstrapValidator').destroy();
    $('#user_add_form').data('bootstrapValidator', null);
    
});
$('#change_user_password_modal').on('hidden.bs.modal', function() {
    $("#user_change_form").data('bootstrapValidator').destroy();
    $('#user_change_form').data('bootstrapValidator', null);
    
});


function InitSubRoleTable(index) { 
    $("#admin_userBase_role_datagrid").bootstrapTable({  
        url:'/sysRoles/findAllRoleBySearchText',  
        dataType : "json",
		toolbar : '#userBase_role_toolbar', // 工具按钮用哪个容器
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
		sidePagination: "client", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/x-www-form-urlencoded",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 userId:index.uuid
             }; 
             return param;
		},
		columns : [
			{title : 'checked',field : 'checked',checkbox : true,align : 'center',valign : 'middle'	},
//			{title : 'uuid',field : 'uuid',	align : 'center',sortable : true,valign : 'middle'},
//			{title : '部门名称',field : 'departmentId',sortable : true,align : 'center'},
			{title : '角色名称',field : 'roleName',sortable : true,align : 'left'},
			{title : '角色描述',field : 'discription',sortable : true,align : 'left'},
//			{title : '记录时间',field : 'createTime',align : 'center',	sortable : true,valign : 'middle'},
//			{title : '更新时间',field : 'updataTime',sortable : true,align : 'center'},
//			{title : '标记',	field : 'deleteFlag',	sortable : true,align : 'center'}
		],
//        responseHandler: function(result){  // 成功时执行
//        	console.log(result);
//			return {rows:result.content,total:result.totalElements};
//		}, 
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
	    onCheck: function (row) {
	    	updateUserRole(row,index);
	    },onUncheck: function (row) {
	    	updateUserRole(row,index);
	    },
    }); 
}

function updateUserRole(row,index){
//	console.log(row);
	var  params = {
		"userId":index.uuid,
		"rolesId":row.uuid,
		"checked":row.checked
	}
	var url="/sysUserRoles/save";
	ajaxPost(url, params, successUpdsysuserRole, 10000, findError);
};

function successUpdsysuserRole(result){
	
}

function successAddsysuser(result){
	if(result=="1"){
		$('#admin_userBase_add_modal').modal('hide');
	}else if("用户名已存在" == result){
		alert("用户名称已存在");
	}
	
	$('#admin_userBase_datagrid').bootstrapTable('refresh');
}
function successchangesysuser(result){
	$('#change_user_password_modal').modal('hide');
	$('#admin_userBase_datagrid').bootstrapTable('refresh');	
}

function successUpdsysuser(result){
	$('#admin_userBase_upd_modal').modal('hide');
	$('#admin_userBase_datagrid').bootstrapTable('refresh');
}
function successDelete(result){
	$('#admin_userBase_datagrid').bootstrapTable('refresh');
}