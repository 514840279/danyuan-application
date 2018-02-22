$('#add_table_addrName').select2({
    placeholder: "数据库名称",
    allowClear: true,
    tags: true,
});

$('#add_table_typeName').select2({
    placeholder: "类型名",
    allowClear: true,
    tags: true,
});

$(function() {
	// 新建表
	$('#db_create_table_button').click(function() {
		//		alert("Something will happen!");
		var tableName= $("#add_table_tableName").val();
		var tableDesc=$("#add_table_tableDesc").val();
		var databaseUuid=$("#add_table_addrName").val();
		var typeUuid=$("#add_table_typeName").val();
		var param = {
				uuid:getUuid(),
				tableName:tableName,
				tableDesc:tableDesc,
				databaseUuid:databaseUuid,
				typeUuid:typeUuid
			};
			// 重载
			var url = "/sysTableInfo/saveSysTableInfo";
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
	$("#tabContainer").data("tabs").remove('add_table_tab_id');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('4c87ffe1-6447-11e7-a272-0025d3a93601');
	removeByValue(_history,'add_table_tab_id');
}
//数据库列表下拉
function successSearchDatabaseInfo(result){
	jQuery('#add_table_addrName').append('<option value="">请选择</option>');
	jQuery.each(result, function(index, value) {
		var addr = '<option value="' + value.uuid + '">' + value.databaseName + '</option>';
		jQuery('#add_table_addrName').append(addr);
	});
}
//表类型列表下拉
function successSearchTableTypeInfo(result){
	jQuery('#add_table_typeName').append('<option value="">请选择</option>');
	jQuery.each(result, function(index, value) {
		var type = '<option value="' + value.uuid + '">' + value.typeName + '</option>';
		jQuery('#add_table_typeName').append(type);
	});
}
