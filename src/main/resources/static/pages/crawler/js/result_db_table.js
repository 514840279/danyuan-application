$('#result_db_addr').select2({
    placeholder: "选择数据库",
    allowClear: true,
    tags: true,
});

$('#result_db_table_type').select2({
    placeholder: "选择类型",
    allowClear: true,
    tags: true,
});

$('#result_db_table').select2({
    placeholder: "选择表",
    allowClear: true,
    tags: true,
});

$(function(){
	var url = '/sysDatabaseInfo/findAll';
	ajaxPost(url, null, sucessLoadDatabaseSelect2, 1000, findError);
	
	
	
	$('#result_db_tables_before_div_btn').bind('click',function(){
		$("#result-tab").data("tabs").showTab('result_ruler_model');
	})
	
	$('#result_db_tables_after_div_btn').bind('click',function(){
		$("#result-tab").data("tabs").showTab('result_column_config');
	})
	
	
});
function sucessLoadDatabaseSelect2(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.databaseName});
	});
	$('#result_db_addr_select').select2({data:data});
}

var _databaseid=null;
$('#result_db_addr_select').on('select2:select', function (evt) {
	_databaseid = evt.params.data.id;
	loadTableSelect();
});
var _typeUuid=null;
function loadTableSelect(){
	var url = '/sysTableInfo/findAllBySysTableInfo';
    var param = {
    		databaseUuid:_databaseid,
    		typeUuid:_typeUuid,
    };
	ajaxPost(url, param, sucessLoadTableSelect2, 1000, findError);
}

function sucessLoadTableSelect2(result){
	var data = [{id:"",text:"请选择"}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.tableName});
	});
	$('#result_db_table').select2({data:data});
}



$('#result_db_table').on('select2:select', function (evt) {
	var id = evt.params.data.id;
	var url = '/sysColumnInfo/findAllBySysColumnInfo';
    var param = {
    		tableUuid:id,
    };;
    _result_config_table_uuid = id;
	ajaxPost(url, param, sucessLoadTableColumnSelect2, 1000, findError);
});

function sucessLoadTableColumnSelect2(result){
	var data = [{id:"",text:"请选择"}];
	$('#result_config_table_column').empty();
	$.each(result,function(index,value){
		var option= "<option id="+value.uuid+">"+value.colsName+"</option>"
		$('#result_config_table_column').append(option);
	});
	loadResultConfig();
}
