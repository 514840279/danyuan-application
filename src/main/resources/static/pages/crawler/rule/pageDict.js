window.operateEvents = {
	// 修改
	'click #clickA' : function(e, value, row, index) {
		$("#pageDict_column_upd_uuid").val(row['uuid']);
		$("#pageDict_column_upd_name").val(row['name']);
		$("#pageDict_column_upd_rule").val(row['rule']);
		$("#pageDict_columnRuleType").select2().val(row['type']).trigger("change");
		columnpageDictRuleTypeSelectText=row['type'];
		$("#pageDict_add_column_modal").modal({"show":true});
	},
	'click #clickB' : function(e, value, row, index) {
		// 删除
		bootbox.setLocale("zh_CN");
		bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
				if (result) {
					ruler.dictList.columns.splice(ruler.dictList.columns.indexOf(row),1);
					saveRuler(ruler)
					$('#dict_table_cloumns_id').bootstrapTable('load',ruler.dictList.columns);
				}
			}
		});
	},
	// 修改
	'click #clickE' : function(e, value, row, index) {
		$("#dict_pageType_modal").modal({"show":true});
		$("#dict_pageType_select").on('select2:select', function (evt) {
			row['pageType']=evt.params.data.id;
		})
		$("#dict_pageType_upd_button").click(function(){
			row['pageName'] = $("#dict_pageName").val();
			$("#dict_pageType_modal").modal("hide");
			saveRuler(ruler);
			// 添加tab
			$("#tab-context").data("tabs").addTab({id: row['uuid'], text: row['pageName'], closeable: false, url: '/crawler/ruler/'+row['pageType']+'/'+row['uuid']});
		})		
	}
	
}

$(function() {
	init();
});
// 初始化 
function init(){
	// 保存规则
	$("#pageDict_makeSure_button_id").bind("click",function(){
		ruler.dictList.groupRule=$("#pageDict_column_upd_name").val(),
		ruler.dictList.nextPageRule=$("#pageDict_column_upd_rule").val(),
		saveRuler(ruler);
	});
	// 返回任务页
	$("#pageDict_reback_button_id").bind("click",function(){
		loadPage("/pages/crawler/task/index.html");
	})
	
	// 显示模态框
	$("#add_pageDict_rule_group_config_btn").bind("click",function(){
		$("#pageDict_add_column_modal").modal({"show":true});
	});
	
	// 显示下拉框
	loadPageDictColumnRuleType();
	
	// 显示表格
	loadPageDictGroup();
	
	$("#pageDict_column_upd_button").bind("click",function(){
		console.log($("#pageDict_column_upd_uuid").val());
		var column={
				"uuid":$("#pageDict_column_upd_uuid").val()==""?getUuid():$("#pageDict_column_upd_uuid").val(),
				"name":$("#pageDict_column_upd_name").val(),
				"rule":$("#pageDict_column_upd_rule").val(),
				"type":columnpageDictRuleTypeSelectText
		};
		for(index=0; index<ruler.dictList.columns.length;index++){
			value = ruler.dictList.columns[index];
			if(column['uuid'] === value['uuid']){
				ruler.dictList.columns.splice(index,1);
				break;
			}
		}
		ruler.dictList.columns.push(column);
		saveRuler(ruler)
		$('#dict_table_cloumns_id').bootstrapTable('load',ruler.dictList.columns);
		$("#pageDict_add_column_modal").modal("hide");
	})
	
	$("#dict_pageType_select").select2({
		data:[
			{"id":"","text":"请选择"},
			{"id":"pageList","text":"列表型页面"},
			{"id":"pageDetail","text":"详细信息页面"},
			{"id":"pageDict","text":"字典页面"}
			]
	});
	
}
var columnpageDictRuleTypeSelectText="";
function loadPageDictColumnRuleType(){
	var rule_type_data=[
		{"id":"","text":"请选择"},
		{"id":"文本","text":"文本"},
		{"id":"连接","text":"连接"},
		{"id":"图片","text":"图片"},
		{"id":"源代码","text":"源代码"},
	];
	
	$("#columnRuleType").select2({
		data:rule_type_data
	}).on('select2:select', function (evt) {
		columnpageDictRuleTypeSelectText=evt.params.data.id;
	});
}

function loadPageDictGroup(){
	if(ruler.dictList==null){
		ruler.dictList={};
		ruler.dictList.columns=[];
		saveRuler(ruler)
	}
	// 组
	$("#pageDict_colum_group_id").val(ruler.dictList.groupRule);
	// 下一页
	// bootstrap table
	$('#dict_table_cloumns_id').bootstrapTable({
		toolbar : '#pageDict_rule_group_table_toolbar', // 工具按钮用哪个容器
		data:ruler.dictList.columns,
		editable:true,//开启编辑模式
		columns : [
			{title : '全选',checkbox : true,align : 'left',valign : 'middle'},
			{title : '.',field : 'uuid',align : 'left',sortable : true,valign : 'middle',visible:false},
			{title : '规则名称',field : 'name',align : 'left',sortable : true,valign : 'middle'},
			{title : '规则类型',field : 'type',sortable : true,align : 'left',valign : 'middle', sortable: true},
			{title : '规则',field : 'rule',sortable : true,align : 'left',valign : 'middle'},
			{title : '操作', align : 'left',valign : 'middle', events: operateEvents,formatter : function(value, row, index) {
				var A = "<i  type='button' id='clickA'  class=' btn btn-default fa fa-edit' title='编辑' ></i> ";
				var B = "<i  type='button' id='clickB'  class=' btn btn-default fa fa-remove' title='删除' ></i> ";
				var E ="";
				if(row['type']=="连接"){
					if(row['pageType']!=''){
						// 添加tab
						$("#tab-context").data("tabs").addTab({id: row['uuid'], text: row['pageName'], closeable: false, url: '/crawler/ruler/'+row['pageType']+'/'+row['uuid']});
						E ="<i  type='button'   class=' btn btn-default fa fa-cog' disabled='disabled' title='"+row['pageName']+"' ></i> ";
					}else{
						E ="<i  type='button' id='clickE'  class=' btn btn-default fa fa-cog' title='编辑详细页面' ></i> ";
					}
				}
				return A+B+E;
			}},
		],
	});
	// 表格
	$("#pageDict_next_page_rule_id").val(ruler.groupList.nextPageRule);
}


