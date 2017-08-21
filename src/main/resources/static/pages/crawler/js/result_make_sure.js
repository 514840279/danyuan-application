$(function(){
	
	$('#result_make_sure_before_div_btn').bind('click',function(){
		$("#result-tab").data("tabs").showTab('result_column_config');
	})
	
	$('#result_make_sure_ok_div_btn').bind('click',function(){
		var url = '/sysSeedResultRulerInfo/saveSysSeedResultRulerInfo';
		var param={
			tableUuid:_result_config_table_uuid,
			rulerUuid:_result_config_ruler_uuid,
			list:_relation_data,
		}
		ajaxPost(url, param, sucessLoadResultConfigRelitationSelect2, 1000, findError);
	})
	
	
	
});
function sucessLoadResultConfigRelitationSelect2(result){
	alert("保存成功")
}