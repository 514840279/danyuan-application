$(function() {
	// 新建表
	$('#db_alter_table_add_column_button').click(function() {
		var param = {
			uuid : $('#upd_column_uuid').val()==""?getUuid():$('#upd_column_uuid').val(),
			tableUuid : $('#upd_column_tableUuid').val(),
			colsName : $('#upd_column_colsName').val(),
			colsDesc : $('#upd_column_colsDesc').val(),
			colsType : $('#upd_column_colsType').val(),
			colsLength : $('#upd_column_colsLength').val(),
			colsOrder : $('#upd_column_colsOrder').val(),
			discription : $('#upd_column_discription').val(),
			colsAlign : $('#upd_column_colsAlign').val(),
			colsValign : $('#upd_column_colsValign').val(),
			colsWidth : $('#upd_column_colsWidth').val(),
			colsVisible : $('#upd_column_colsVisible').val(),
			colsSwitchable : $('#upd_column_colsSwitchable').val(),
			colsIndex : $('#upd_column_colsIndex').val(),
		};
		// 重载
		var url = "/sysColumnInfo/saveSysColumnInfo";
		ajaxPost(url, param, successSaveSysColumnInfo, 1000, findError);
	});
	
});

// 创建字段成功
function successSaveSysColumnInfo(result) {
	$("#tabContainer").data("tabs").remove('add_column_tab_id');
	// 固定 表的tab 的id
	$("#tabContainer").data("tabs").showTab('upd_table_tab_id');
	$("#db_colum_datagrid").bootstrapTable('refresh');
	removeByValue(_history, 'add_column_tab_id');
}
