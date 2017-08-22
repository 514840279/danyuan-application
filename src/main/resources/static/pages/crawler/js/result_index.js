$(function() {
    $("#result-tab").tabs({
   	 data: [{
            id: 'result_ruler_model',
            text: '选择模板',
            url: "pages/crawler/result_ruler_model.html"
        },{
            id: 'result_db_tables',
            text: '选择数据表',
            url: "pages/crawler/result_db_tables.html"
        },{
            id: 'result_column_config',
            text: '字段映射',
            url: "pages/crawler/result_column_config.html"
        },{
            id: 'result_make_sure',
            text: '确认结果',
            url: "pages/crawler/result_make_sure.html"
        }],
        showIndex: 0,
        loadAll: true
   });
    $("#result-tab").find('#myTab').attr('id','myTab1');
});



//初始化关系判断加载数据
function loadResultConfig(){
	// 判断不为空
	if (_result_config_ruler_uuid == null){
		return;
	}
	if (_result_config_table_uuid == null){
		return;
	}
	// 请求数据
	var url = '/sysSeedResultRulerInfo/findAllBySysSeedResultRulerInfo';
	var param={
		rulerUuid:_result_config_ruler_uuid,
		tableUuid:_result_config_table_uuid,
	}
	ajaxPost(url, param, sucessLoadResultConfigSelect2, 1000, findError);
}


//初始化关系加载数据
function sucessLoadResultConfigSelect2(result){
	$('#result_config_relation').empty();
	$.each(result,function(index,value){
		_relation_data.push({
			uuid:value.uuid,
			rulerColumUuid :value.rulerColumUuid,
			rulerColumName:value.rulerColumName,
			colsUuid:value.colsUuid,
			colsName:value.colsName,
		});
		var option= "<option id="+value.uuid+">"+value.rulerColumName+" &nbsp;&nbsp;    >> &nbsp; &nbsp;     "+value.colsName+"</option>"
		$('#result_config_relation').append(option);
		$('#result_config_column').find("#"+value.rulerColumUuid).remove();
		$('#result_config_table_column').find("#"+value.colsUuid).remove();
		
	});
}

