var add_table_addrName = null;
var add_table_typeName = null;

$(function() {
	// 新建表
	$('#db_create_table_button').click(function() {
		sysTableInfo.updateTime=null;
		sysTableInfo.createTime=null;
		
		var param = {
			old:sysTableInfo,
			now:{				
				uuid: $("#add_table_uuid").val(),
				tabsName: $("#add_table_tableName").val(),
				tabsDesc:$("#add_table_tableDesc").val(),
				typeUuid:add_table_typeName
			},
			username:username
		};
		// 重载
		var url = "/sysDbmsTabsInfo/change";
		ajaxPost(url, param, successSaveSysTableInfo, 1000, findError);
	});

	// 表类型列表下拉
	ajaxPost('/sysDbmsTabsTypeInfo/findAll', null, successSearchTableTypeInfo, null, findError);

});

// 创建表成功
function successSaveSysTableInfo(result){
	$("#upd_tabs_id").on("hidden.bs.modal", function() {
		if(_table != undefined && _table != null){
			_table.text(result.tabsDesc);
			_table = null;
		}
	});
	modals.hideWin("upd_tabs_id");
	$('#db_table_datagrid').bootstrapTable('refresh');
	
}

//表类型列表下拉
function successSearchTableTypeInfo(result){var data =[{id:'请选择',text:'请选择'}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text: value.typeName});
	})
	
	$("#add_table_typeName").select2({
	    tags: true,
	    placeholder: "请选择",
	    data: data
	});
	add_table_typeName = sysTableInfo.typeUuid;
	$("#add_table_typeName").val(sysTableInfo.typeUuid).trigger("change");
	$('#add_table_typeName').on('select2:select', function (evt) {
		add_table_typeName = evt.params.data.id;
		if(add_table_typeName == "请选择"){
			add_table_typeName = null;
		}
	});
}
