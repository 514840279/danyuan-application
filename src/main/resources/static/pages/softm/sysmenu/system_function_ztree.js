var addCount = 1;
var zTree, rMenu;
var setting = {};
// zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
var zNodes = [];
// 取数据的地址
$(document).ready(function() {
	
	/** **** ****** */
	var zTreeObj;
	/** ***** 参数函数设置 ***** */
	// zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
	setting = {
		data : {
			simpleData : {
				enable : true
			},
			keep : {
				// parent : true
				/* 如果设置为 true，则所有 isParent = true 的节点，即使该节点的子节点被全部删除或移走，依旧保持父节点状态 */
			}
		},
		edit : {
			drag : {
				autoExpandTrigger : true,
				isMove : true,
				prev : true,
				inner : true,
				next : true,
			},
			showRemoveBtn : false, // 显示删除按钮
			showRenameBtn : true, // 显示改名按钮
			enable : true, // 可编辑
			removeTitle : "删除节点",
			renameTitle : "重命名节点"
		},
		callback : {
			// 鼠标拖拽后调用函数
			// beforeDrag : zTreeBeforeDrag,
			// onDrag : zTreeOnDrag,
			// beforeDrag: beforeDrag, //拖拽前：捕获节点被拖拽之前的事件回调函数，并且根据返回值确定是否允许开启拖拽操作
			// beforeDrop: beforeDrop, //拖拽中：捕获节点操作结束之前的事件回调函数，并且根据返回值确定是否允许此拖拽操作
			beforeDragOpen : expand, // 拖拽到的目标节点是否展开：用于捕获拖拽节点移动到折叠状态的父节点后，即将自动展开该父节点之前的事件回调函数，并且根据返回值确定是否允许自动展开操作
			// onDrag: onDrag, //捕获节点被拖拽的事件回调函数
			onDrop : zTreeOnDrop, // 捕获节点拖拽操作结束的事件回调函数
			// onExpand: expand, //捕获节点被展开的事件回调函数
			// beforeDrop: zTreeBeforeDrop,
			// onDrop: zTreeOnDrop,
			// 编辑
			// beforeEditName: zTreeBeforeEditName,
			// beforeRename : zTreeBeforeRename,
			onRename : zTreeOnRename,
			// 移动
			// beforeRemove : zTreeBeforeRemove,
			// onRemove : zTreeOnRemove,
			// 右键
			// beforeRightClick : zTreeBeforeRightClick,
			onRightClick : zTreeOnRightClick
		}
	
	};
	var url = "/sysMenuInfo/findzTree";
	
	/** ** 加载页面 树 数据 *** */
	// 获取 加载数据
	ajaxPost(url, null, loadTree, null, findError);
});
// 加载 load。。。

function loadTree(result) {
	zNodes = result;
//	console.log(zNodes);
	zTreeObj = $.fn.zTree.init($("#ztree"), setting, zNodes);
	zTree = $.fn.zTree.getZTreeObj("ztree");
	rMenu = $("#rMenu");
	
};



/** ** 回调函数 **** */
// 拖拽前
// function zTreeBeforeDrag(treeId, treeNodes) {
// window.parent.window.alert(JSON.stringify(treeNodes));
// };
// 拖拽时
// function zTreeOnDrag(event, treeId, treeNodes) {
// window.parent.window.alert(JSON.stringify(treeNodes.length));
// };
// 拖拽放下
function zTreeOnDrop(event, treeId, treeNodes, targetNode, moveType) {
	var param = {
		uuid : "",
		parentsId : targetNode.id,
		fModifyUserId : "",
		fModifyUserName : "",
		moveType : moveType
	}
	for (var int = 0; int < treeNodes.length; int++) {
		param.uuid = param.uuid + treeNodes[int].id + ",";
	}
	
	var url = "/sysMenuInfo/onDropSysMenuInfo";
	// 重载
	ajaxPost(url, param, sucessOnDrop, 1000, findError);
};
function sucessOnDrop(result) {
	
}
// 改名前
// function zTreeBeforeRename(treeId, treeNode, newName, isCancel) {
// window.parent.window.alert(JSON.stringify(newName.length));
// };
// 改名
function zTreeOnRename(event, treeId, treeNode, isCancel) {
	// window.parent.window.alert(treeNode.id + ", " + treeNode.name);
	var param = {
		uuid : treeNode.id,
		name : treeNode.name
	}
	var url = "/sysMenuInfo/updateSysMenuInfoName";
	// 重载
	ajaxPost(url, param, successUpdateMenu, 1000, findError);
};
// 删除前
// function zTreeBeforeRemove(treeId, treeNode) {
// window.parent.window.alert(JSON.stringify(treeNode));
// };
// 删除
// function zTreeOnRemove(event, treeId, treeNode) {
// // removeTreeNode();
// window.parent.window.alert(JSON.stringify(treeNode));
// var msg;
// if (nodes.isParent) {
// msg = "要删除的节点是父节点，如果删除将连同子节点一起删掉。\n\n请确认！";
// } else {
// msg = "请确认是否要删除此节点。\n\n请确认！";
// }
// this.parent.bootbox.setLocale("zh_CN");
// this.parent.bootbox.confirm({message:msg,title:"系统提示", callback:function(result) {
// if (result) {
// var param ={
// fModuleId:treeNode.id
// }
// // 重载
// var url = "/authority/deleteAuthority";
// ajaxPost(url, param, successdelete, 1000, findError);
// }
// } });
// };
// 右键前
// function zTreeBeforeRightClick(treeId, treeNode) {
// };
// 右键
function zTreeOnRightClick(event, treeId, treeNode) {
	if (!treeNode && event.target.tagName.toLowerCase() != "button" && $(event.target).parents("a").length == 0) {
		zTree.cancelSelectedNode();
		showRMenu("root", event.clientX, event.clientY);
	} else if (treeNode && !treeNode.noR) {
		zTree.selectNode(treeNode);
		showRMenu("node", event.clientX, event.clientY);
	}
	
}

// 显示菜单
function showRMenu(type, x, y) {
	$("#rMenu ul").show();
	rMenu.css({
	"top" : y + "px",
	"left" : x + 10 + "px",
	"visibility" : "visible"
	});
	
	$("body").bind("mousedown", onBodyMouseDown);
	
}
// 隐藏菜单
function hideRMenu() {
	if (rMenu)
		rMenu.css({
			"visibility" : "hidden"
		});
	$("body").unbind("mousedown", onBodyMouseDown);
}
// 禁用 鼠标点击事件
function onBodyMouseDown(event) {
	if (!(event.target.id == "rMenu" || $(event.target).parents("#rMenu").length > 0)) {
		rMenu.css({
			"visibility" : "hidden"
		});
	}
}

/** *********************** 添加节点* ******************* */
function addTreeNode() {
	// 隐藏菜单
	hideRMenu();
//	var name = "增加" + (addCount++);
	if (zTree.getSelectedNodes()[0] != null) {
		$("#add_menu_parentId").val(zTree.getSelectedNodes()[0].id);
		$("#add_menu_parentName").val(zTree.getSelectedNodes()[0].name);
		$("#add_menu_icon").val("");
		$("#add_menu_sort").val(zTree.getSelectedNodes()[0].children.length + 1);
	} else {
		$("#add_menu_parentId").val("0");
		$("#add_menu_parentName").val("root");
	}
	var id = getUuid();
	$("#add_menu_uuid").val(id);
	$("#add_menu_homePage").val("false"); // 默认不是首页
	// 弹出模态框
	$("#addMenuModal").modal("show");
}
var winId="";
function add_select_icon(){
	winId="add_icon_modal";
	var iconName;
	if($("#add_menu_icon").val())
	   iconName=encodeURIComponent($("#add_menu_icon").val());
	modals.openWin({
    	winId:winId,
    	title:'图标选择器（双击选择）',
    	width:'1000px',
    	url:"/icon/nodecorator/select?iconName="+iconName
    });
}
//回填图标
function fillBackIconName(icon_name){
	$("#add_menu_icon").val(icon_name); 
	$("#upd_menu_icon").val(icon_name);
//	$("#icon_i").removeClass().addClass("form-control-feedback").addClass(icon_name);
}



$('#add_ztree_form').bootstrapValidator({
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
	                message : '名称不能为空'
                } ,
            }
        }, icon : {
	        validators : {
		        notEmpty : {
			        message : '图标不能为空'
		        }
	        }
        }, uri : {
	        validators : {
		        notEmpty : {
			        message : '网页地址不能为空'
		        }
	        }
        }, homePage : {
	        validators : {
		        notEmpty : {
			        message : '是否首页不能为空'
		        }
	        }
        }
    }
});
function addMenusubmit() {
	$('#add_ztree_form').data("bootstrapValidator").validate();
	var flag = $('#add_ztree_form').data("bootstrapValidator").isValid();
	if (flag) {
		var param = {
			uuid : $("#add_menu_uuid").val(),
			name : $("#add_menu_name").val(),
			icon : $("#add_menu_icon").val(),
			discription : $("#add_menu_discription").val(),
			uri : $("#add_menu_uri").val(),
			parentsId : $("#add_menu_parentId").val(),
			sort : $("#add_menu_sort").val(),
			deleteFlag : $("#add_menu_deleteFlag").val(),
			insertUser : username,
			homePage:$("#add_menu_homePage").val()
		}
		var url = "/sysMenuInfo/addSysMenuInfo";
		console.log(param);
		// 重载
		ajaxPost(url, param, sucessAddMenu, 1000, findError);
	}
}

function sucessAddMenu(result) {
	var newNode = {
	id : result.id,
	name : result.name,
	icon : result.icon
	};
	if (zTree.getSelectedNodes()[0] != null) {
		newNode.checked = zTree.getSelectedNodes()[0].checked;
		zTree.addNodes(zTree.getSelectedNodes()[0], newNode);
	} else {
		zTree.addNodes(0, newNode);
	}
	$("#addMenuModal").modal("hide");
}

/** *************** 更新 节点 ******************************* */

function updateTreeNode() {
	var param = {
		uuid : zTree.getSelectedNodes()[0].id
	};
	var url = "/sysMenuInfo/findSysMenuInfoByUuid";
	ajaxPost(url, param, loadUpdateMenu, 1000, findError);
}

function loadUpdateMenu(result) {
	$("#upd_menu_uuid").val(result.uuid);
	$("#upd_menu_name").val(result.name);
	$("#upd_menu_icon").val(result.icon);
	$("#upd_menu_discription").val(result.discription);
	$("#upd_menu_uri").val(result.uri);
	$("#upd_menu_parentId").val(result.parentsId);
	$("#upd_menu_sort").val(result.sort);
	$("#upd_menu_deleteFlag").val(result.deleteFlag);
	$("#upd_menu_homePage").val(result.homePage);
	$("#updateMenuModal").modal("show");
}

function upd_select_icon(){
	winId="upd_icon_modal";
	var iconName;
	if($("#upd_menu_icon").val())
	   iconName=encodeURIComponent($("#upd_menu_icon").val());
	modals.openWin({
    	winId:winId,
    	title:'图标选择器（双击选择）',
    	width:'1000px',
    	url:"/icon/nodecorator/select?iconName="+iconName
    });
}

$('#upd_ztree_form').bootstrapValidator({
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
	                message : '名称不能为空'
                } ,
            }
        }, icon : {
	        validators : {
		        notEmpty : {
			        message : '图标不能为空'
		        }
	        }
        }, uri : {
	        validators : {
		        notEmpty : {
			        message : '网页地址不能为空'
		        }
	        }
        }, homePage : {
	        validators : {
		        notEmpty : {
			        message : '是否首页不能为空'
		        }
	        }
        }
    }
});
function updatesubmitMenu() {
	$('#upd_ztree_form').data("bootstrapValidator").validate();
	var flag = $('#add_ztree_form').data("bootstrapValidator").isValid();
	if (flag) {
		var param = {
			uuid : $("#upd_menu_uuid").val(),
			name : $("#upd_menu_name").val(),
			icon : $("#upd_menu_icon").val(),
			discription : $("#upd_menu_discription").val(),
			uri : $("#upd_menu_uri").val(),
			parentsId : $("#upd_menu_parentId").val(),
			sort : $("#upd_menu_sort").val(),
			deleteFlag : $("#upd_menu_deleteFlag").val(),
			updateUser : username,
			homePage:$("#upd_menu_homePage").val()
		}
		var url = "/sysMenuInfo/addSysMenuInfo";
		// 重载
		ajaxPost(url, param, successUpdateMenu, 1000, findError);
	}
}

function successUpdateMenu(result) {
	zTree.getSelectedNodes()[0].id = result.id;
	zTree.getSelectedNodes()[0].name = result.name;
	zTree.getSelectedNodes()[0].icon = result.icon;
	zTree.updateNode(zTree.getSelectedNodes()[0]);
	
	$("#updateMenuModal").modal("hide");
}

/** ********** 删除节点 包含子节点 ********* */
function removeTreeNode() {
	hideRMenu();
	var nodes = zTree.getSelectedNodes();
	var msg;
	if (nodes.isParent) {
		msg = "要删除的节点是父节点，如果删除将连同子节点一起删掉。\n\n请确认！";
	} else {
		msg = "请确认是否要删除此节点。\n\n请确认！";
	}
	this.parent.bootbox.setLocale("zh_CN");
	this.parent.bootbox.confirm({
	message : msg,
	title : "系统提示",
	callback : function(result) {
		if (result) {
			var param = {
				uuid : zTree.getSelectedNodes()[0].id
			}
			// 重载
			var url = "/sysMenuInfo/deleteSysMenuInfo";
			ajaxPost(url, param, successdeleteMenu, 1000, findError);
		}
	}
	});
	
}

function successdeleteMenu() {
	var nodes = zTree.getSelectedNodes();
	zTree.removeNode(nodes[0]);
}

// 展开下一级子节点
function expand() {
	hideRMenu();
	var selectNodes = zTree.getSelectedNodes();
	zTree.expandNode(selectNodes[0], true, null, null);
}
// 展开所有子节点
function expandSon() {
	hideRMenu();
	var selectNodes = zTree.getSelectedNodes();
	zTree.expandNode(selectNodes[0], true, true, null);
}
// 折叠子节点
function collapse() {
	hideRMenu();
	var selectNodes = zTree.getSelectedNodes();
	zTree.expandNode(selectNodes[0], false, null, null);
}
// 全部展开
function expandAll() {
	hideRMenu();
	zTree.expandAll(true);
}
// 全部折叠
function collapseAll() {
	hideRMenu();
	zTree.expandAll(false);
}


