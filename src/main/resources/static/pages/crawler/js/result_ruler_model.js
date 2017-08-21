$('#result_seed_select').select2({
    placeholder: "选择种子网站",
    allowClear: true,
    tags: true,
});

$('#result_seed_ruler_select').select2({
    placeholder: "选择模板",
    allowClear: true,
    tags: true,
});

$(function(){
	var url = '/sysSeed/findAll';
	ajaxPost(url, null, sucessLoadSeedSelect2, 1000, findError);
});
$('#result_seed_select').on('select2:select', function (evt) {
	var id = evt.params.data.id;
	var url = '/sysRuler/findAllByUuid';
    var param = {  
            uuid:id,
        }; 
	ajaxPost(url, param, sucessLoadSeedRulerSelect2, 1000, findError);
});
function sucessLoadSeedSelect2(result){
	var data = [{id:" ",text:" "}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.seedName});
	});
	$('#result_seed_select').select2({data:data});
}

function sucessLoadSeedRulerSelect2(result){
	var data = [{id:" ",text:" "}];
	$.each(result,function(index,value){
		data.push({id:value.uuid,text:value.name});
	});
	$('#result_seed_ruler_select').select2({data:data});
}