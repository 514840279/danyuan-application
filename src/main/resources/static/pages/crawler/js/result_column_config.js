
$(function(){
	// 前翻页
	$('#result_column_config_befor_div_btn').bind('click',function(){
		$("#result-tab").data("tabs").showTab('result_db_tables');
	})
	// 后翻页
	$('#result_column_config_after_div_btn').bind('click',function(){
		$("#result-tab").data("tabs").showTab('result_make_sure');
	})
	// 规则字段下拉列表点击事件
	$('#result_config_column').change(function(){
		
	    var value =$(this).children('option:selected').text();
        var id = $(this).children('option:selected').attr("id");
		_config_column_data = {
				id :id,
				value:value,
		}
		
		relationPush();
	})
	
	// 表字段下拉列表点击事件
	$('#result_config_table_column').change(function(){
	    var value =$(this).children('option:selected').text();
        var id = $(this).children('option:selected').attr("id");
        _config_table_column_data = {
				id :id,
				value:value,
		}
        relationPush();
	})
	
	$('#result_config_relation').dblclick(function(){
        var id = $(this).children('option:selected').attr("id");
    	$.each(_relation_data,function(index,value){
    		if(value.uuid == id){
    			var option= "<option id="+value.colsUuid+">"+value.colsName+"</option>"
    			$('#result_config_table_column').append(option);
    			var option= "<option id="+value.rulerColumUuid+">"+value.rulerColumName+"</option>"
    			$('#result_config_column').append(option);
    			$('#result_config_relation').find("#"+id).remove();
    			_relation_data.splice(index,1);
    		}
    	})
	})
	
	$('#result_column_config_table_save_btn_success').click(function(){
		if(_result_config_table_uuid == null){
			return;
		}
        var param ={
        		list:[],
        };
        var url = '/sysColumnInfo/saveSysColumnVo';
        var list_data_el = $("#result_config_column  option"); 
        
		$.each(list_data_el,function(index,value){
			var data = value.text;
			param.list.push({
				uuid:getUuid(),
				tableUuid:_result_config_table_uuid,
				colsLength:255,
				colsDesc:data,
				colsName:data,
				colsType:'varchar',
				colsOrder:index+4,
			});
		})
		ajaxPost(url, param, sucessLoadResultConfigRelitationSelect2, 1000, findError);
	})
	
	
});


// 添加关系
function relationPush(){
	
	// 判断不为空 
	if (_config_column_data == null){
		return;
	}
	if (_config_table_column_data == null){
		return;
	}
	// 添加映射关系
	_relation_data.push({
		uuid:getUuid(),
		rulerColumUuid :_config_column_data.id,
		rulerColumName:_config_column_data.value,
		colsUuid:_config_table_column_data.id,
		colsName:_config_table_column_data.value,
	});
	console.log(_relation_data);
	$('#result_config_column').find("#"+_config_column_data.id).remove();
	_config_column_data = null;
	$('#result_config_table_column').find("#"+_config_table_column_data.id).remove();
	_config_table_column_data=null;
	
	
	// 重置显示样式
	$('#result_config_relation').empty();
	$.each(_relation_data,function(index,value){
		var option= "<option id="+value.uuid+">"+value.rulerColumName+" &nbsp;&nbsp;    >> &nbsp; &nbsp;     "+value.colsName+"</option>"
		$('#result_config_relation').append(option);
	})
	
}