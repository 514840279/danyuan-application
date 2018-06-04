window.operateEvents = {
		// 修改
        'click #clickA ': function (e, value, row, index) {
        	getEditsuccess(row);
     },
        'click #clickE': function (e, value, row, index) {
        	// 复制
        	bootbox.setLocale("zh_CN");
        	bootbox.confirm({
				message : "确定要删除选定行",
				title : "系统提示",
				callback : function(result) {
						if (result) {
							var submiturl = "/sysOrganization/sysOrganizationDelete";
							ajaxPost(submiturl, row, success, 5000, error);
						}
					}
			});
	}
}

$(function() {
	// 绑定 启动 添加模态框 事件
	$('#addnew').click(function() {
		// 模态框
		$('#admin_organization_add_modal').modal();
	});
	// 绑定 批量删除事件
	$('#deleteold').click(function() {
		var data = $('#admin_organization_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var submiturl = "/sysOrganization/delete";
						ajaxPost(submiturl, {list:data}, success, 5000, error);
					}
				}
			});
		}
	});
	// 绑定 添加事件
	$('#add_button').click(function() {
		add();
	});
	// 绑定 编辑 事件
	$('#edit_button').click(function() {
		edit();
	});
	

	// bootstrap table
	$('#admin_organization_datagrid').bootstrapTable({
		url : "/sysOrganization/sysOrganizationList",
		dataType : "json",
		toolbar : '#organization_toolbar', // 工具按钮用哪个容器
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
		height : 455, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
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
			{title : '全选',checkbox : true,	align : 'center',valign : 'middle'},
			{title : '机构代码',field : 'organizationCode',align : 'center',sortable : true,valign : 'middle'},
			{title : '机构名称',field : 'organizationName',align : 'center',sortable : true,valign : 'middle'},
			{title : '组织机构地址',field : 'organizationAddress',align : 'center',sortable : true,valign : 'middle'},
			{title : '组织机构联系电话',field : 'organizationPhone',align : 'center',sortable : true,valign : 'middle'},
			{title : '组织机构联系邮箱',field : 'organizationEmail',align : 'center',sortable : true,valign : 'middle'},
			{title : '机构描述',field : 'discription',sortable : true,align : 'center'},
			{title : '录入时间',field : 'createTime',sortable : true,align : 'center',formatter: dateTimeFormatter},
			{title : '更新时间',field : 'updateTime',sortable : true,align : 'center',formatter: dateTimeFormatter},
//			{title : '状态',field : 'deleteFlag',sortable : true,align : 'center',formatter: stateFormatter	},
			{title : '操作',field : 'uuid',align : 'center', events: operateEvents,
				formatter : function(value, row, index) {
					var e = "<i  type='button' id='clickA'  class=' btn btn-default fa fa-edit' title='编辑' ></i> ";
					var d = "<i  type='button' id='clickE'  class=' btn btn-default fa fa-remove' title='删除'></i> ";
					return e + d;
				}
			} 
		]
	});

});



// ----------------------------添加 ---------------------------------
// 验证
$('#admin_organization_add_form').bootstrapValidator({
    message : '验证失败消息',
    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
        valid : 'glyphicon glyphicon-ok',
        invalid : 'glyphicon glyphicon-remove',
        validating : 'glyphicon glyphicon-refresh'
    },
    fields : {/* 验证 */
    	organizationCode : {/* 键名username和input name值对应 */
            validators : {
                notEmpty : {/* 非空提示 */
	                message : '机构代码不能为空'
                },
                stringLength : {/* 长度提示 */
                    max : 50,
                    message : '机构代码长度必须在50之内'
                }
            }
        },organizationName : {/* 键名username和input name值对应 */
            validators : {
                notEmpty : {/* 非空提示 */
	                message : '机构名称不能为空'
                },
                stringLength : {/* 长度提示 */
                    max : 50,
                    message : '机构名称长度必须在50之内'
                }
            }
//        },deleteFlag : {/* 键名username和input name值对应 */
//            validators : {
//                notEmpty : {/* 非空提示 */
//	                message : '标记不能为空'
//                }
//            }
        }
    }
});
// 添加数据
function add(){
	$('#admin_organization_add_form').data("bootstrapValidator").validate();
	var flag = $('#admin_organization_add_form').data("bootstrapValidator").isValid();
	if (flag) {
		var info={
				uuid:getUuid(),
				organizationCode:$('#add_organizationCode').val(),
				organizationName:$('#add_organizationName').val(),
				discription:$('#add_organizationDiscription').val(),
//				deleteFlag:$('#add_flag:checked').val()
				organizationAddress:$('#add_organizationAddress').val(),
				organizationPhone:$('#add_organizationPhone').val(),
				organizationEmail:$('#add_organizationEmail').val(),
		};
		
		var submiturl = "/sysOrganization/sysOrganizationAdd";
		ajaxPost(submiturl, info, success, 5000, error);
	}
};


// ----------------------- 单一查询 -------------------------------------

// 编辑模态框启动编辑
function getEditsuccess(result){
	var orgaization = result;
	if(orgaization.deleteFlag=="1"){
		$('#edit_flag[value="0"]').attr('checked',false);
		$('#edit_flag[value="1"]').attr('checked',true);
	}else if(orgaization.deleteFlag=="0"){
		$('#edit_flag[value="0"]').attr('checked',true);
		$('#edit_flag[value="1"]').attr('checked',false);
	}
	$('#edit_uuid').text(orgaization.uuid);
	$('#edit_organizationCode').val(orgaization.organizationCode);
	$('#edit_organizationName').val(orgaization.organizationName);
	$('#edit_organizationDiscription').val(orgaization.discription);
	$('#edit_organizationAddress').val(orgaization.organizationAddress),
	$('#edit_organizationPhone').val(orgaization.organizationPhone),
	$('#edit_organizationEmail').val(orgaization.organizationEmail),
	$('#admin_organization_edit_modal').modal();
};

// ------------------- 修改 -------------------------------------
// 验证
$('#admin_organization_edit_form').bootstrapValidator({
    message : '验证失败消息',
    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
        valid : 'glyphicon glyphicon-ok',
        invalid : 'glyphicon glyphicon-remove',
        validating : 'glyphicon glyphicon-refresh'
    },
    fields : {/* 验证 */
    	organizationCode : {/* 键名username和input name值对应 */
            validators : {
                notEmpty : {/* 非空提示 */
	                message : '机构代码不能为空'
                },
                stringLength : {/* 长度提示 */
                    max : 50,
                    message : '机构代码长度必须在50之内'
                }
            }
        },organizationName : {/* 键名username和input name值对应 */
            validators : {
                notEmpty : {/* 非空提示 */
	                message : '机构名称不能为空'
                },
                stringLength : {/* 长度提示 */
                    max : 50,
                    message : '机构名称长度必须在50之内'
                }
            }
//        },deleteFlag : {/* 键名username和input name值对应 */
//            validators : {
//                notEmpty : {/* 非空提示 */
//	                message : '标记不能为空'
//                }
//            }
        }
    }
});
// 编辑
function edit(){
	$('#admin_organization_edit_form').data("bootstrapValidator").validate();
	var flag = $('#admin_organization_edit_form').data("bootstrapValidator").isValid();
	if (flag) {
		var info={
				uuid:$('#edit_uuid').text(),	
				organizationCode:$('#edit_organizationCode').val(),
				organizationName:$('#edit_organizationName').val(),
				discription:$('#edit_organizationDiscription').val(),
				organizationAddress:$('#edit_organizationAddress').val(),
				organizationPhone:$('#edit_organizationPhone').val(),
				organizationEmail:$('#edit_organizationEmail').val(),
//				deleteFlag:$('#edit_flag:checked').val()
		};
		console.log(info);
		var submiturl = "/sysOrganization/sysOrganizationEdit";
		ajaxPost(submiturl, info, success, 5000, error);
	}
};


// --------------- 通用方法 --------------------------------------

// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#admin_organization_datagrid').bootstrapTable('resetView');
});


// 状态的代码转换
function stateFormatter(value,row,index){
	if(value=="1"){
		return "启用";
	}else if(value=="0"){
		return "禁用";
	}
	
};

// success
function success(result){
	if(result=="1"){
		// 添加表单清空
		document.getElementById('admin_organization_add_form').reset();
		// 编辑表单清空
		document.getElementById('admin_organization_edit_form').reset();
		// 隐藏模态框
		$('#admin_organization_add_modal').modal("hide");
		// 隐藏模态框
		$('#admin_organization_edit_modal').modal("hide");
		// 重载table
		$('#admin_organization_datagrid').bootstrapTable('refresh',"/sysOrganization/sysOrganizationList");
		// 模态框提示
//		toastr.success("成功修改");
	}else{
		error();
	}
};

$('#admin_organization_alert_success').alert('hide');

// 调用错误的模态框
function error(){
	alert("出错了")
};





