$('#upd_table_addrName').select2({
    placeholder: "数据库名称",
    allowClear: true,
    tags: true,
});

$('#upd_table_typeName').select2({
    placeholder: "类型名",
    allowClear: true,
    tags: true,
});

$(function() {
	// 新建表
	$('#db_upd_table_button').click(function() {
		//		alert("Something will happen!");
		var uuid= $("#upd_table_uuid").val();
		var tableName= $("#upd_table_tableName").val();
		var tableDesc=$("#upd_table_tableDesc").val();
		var databaseUuid=$("#upd_table_addrName").val();
		var typeUuid=$("#upd_table_typeName").val();
		var param = {
				old:sysTableInfo,
				now:{
					uuid:uuid,
					tableName:tableName,
					tableDesc:tableDesc,
					databaseUuid:databaseUuid,
					typeUuid:typeUuid
				}
		};
		// 重载
		var url = "/sysTableInfo/updateSysTableInfo";
		ajaxPost(url, param, successSaveSysTableInfo, 1000, findError);
	});
	
	// 数据库列表下拉
	ajaxPost('/sysDatabaseInfo/findAll', null, successSearchDatabaseInfo, null, findError);
	// 表类型列表下拉
	ajaxPost('/sysTableTypeInfo/findAll', null, successSearchTableTypeInfo, null, findError);

});

// 创建表成功
function successSaveSysTableInfo(result){
	$("#db_table_datagrid").bootstrapTable('load',result);
	$("#tabContainer").data("tabs").remove('upd_table_tab_id');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('4c87ffe1-6447-11e7-a272-0025d3a93601');
	removeByValue(_history,'upd_table_tab_id');
}
//数据库列表下拉
function successSearchDatabaseInfo(result){
	var data = [];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.databaseName});
	});
	$('#upd_table_addrName').select2({data:data, placeholder: "数据库名称", tags: true,});
}
//表类型列表下拉
function successSearchTableTypeInfo(result){
	var data = [];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.typeName});
	});
	$('#upd_table_typeName').select2({data:data,placeholder: "类型名", tags: true,});
}
