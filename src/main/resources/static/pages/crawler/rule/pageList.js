window.operateEvents = {
	// 修改
	'click #clickC' : function(e, value, row, index) {
		$("#pageList_column_upd_uuid").val(row['uuid']);
		$("#pageList_column_upd_name").val(row['name']);
		$("#pageList_column_upd_rule").val(row['rule']);
		$("#columnRuleType").select2().val(row['type']).trigger("change");
		columnRuleTypeSelectText=row['type'];
		$("#pageList_add_column_modal").modal({"show":true});
	},
	'click #clickD' : function(e, value, row, index) {
		// 删除
		bootbox.setLocale("zh_CN");
		bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
				if (result) {
					ruler.groupList.columns.splice(ruler.groupList.columns.indexOf(row),1);
					saveRuler(ruler)
					$('#list_table_cloumns_id').bootstrapTable('load',ruler.groupList.columns);
				}
			}
		});
	},
	// 修改
	'click #clickE' : function(e, value, row, index) {
		$("#sysrulerinfo_pageType_modal").modal({"show":true});
	}
	
}

$(function() {
	init();
});
// 初始化 
function init(){
	// 保存规则
	$("#pageList_makeSure_button_id").bind("click",function(){
		ruler.groupList.groupRule=$("#colum_group_id").val(),
		ruler.groupList.nextPageRule=$("#next_page_rule_id").val(),
		saveRuler(ruler);
	});
	// 返回任务页
	$("#pageList_reback_button_id").bind("click",function(){
		loadPage("/pages/crawler/task/index.html");
	})
	
	// 显示模态框
	$("#add_pageList_rule_group_config_btn").bind("click",function(){
		$("#pageList_add_column_modal").modal({"show":true});
	});
	
	// 显示下拉框
	loadColumnRuleType();
	
	// 显示表格
	loadGroup();
	
	$("#pageList_column_upd_button").bind("click",function(){
		console.log($("#pageList_column_upd_uuid").val());
		var column={
				"uuid":$("#pageList_column_upd_uuid").val()==""?getUuid():$("#pageList_column_upd_uuid").val(),
				"name":$("#pageList_column_upd_name").val(),
				"rule":$("#pageList_column_upd_rule").val(),
				"type":columnRuleTypeSelectText
		};
		for(index=0; index<ruler.groupList.columns.length;index++){
			value = ruler.groupList.columns[index];
			if(column['uuid'] === value['uuid']){
				ruler.groupList.columns.splice(index,1);
				break;
			}
		}
		ruler.groupList.columns.push(column);
		saveRuler(ruler)
		$('#list_table_cloumns_id').bootstrapTable('load',ruler.groupList.columns);
		$("#pageList_add_column_modal").modal("hide");
	})
	
}
var columnRuleTypeSelectText="";
function loadColumnRuleType(){
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
		columnRuleTypeSelectText=evt.params.data.id;
	});
}

function loadGroup(){
	if(ruler.groupList==null){
		ruler.groupList={};
		ruler.groupList.columns=[];
		saveRuler(ruler)
	}
	// 组
	$("#colum_group_id").val(ruler.groupList.groupRule);
	// 下一页
	// bootstrap table
	$('#list_table_cloumns_id').bootstrapTable({
		toolbar : '#pageList_rule_group_table_toolbar', // 工具按钮用哪个容器
		data:ruler.groupList.columns,
		editable:true,//开启编辑模式
		columns : [
			{title : '全选',checkbox : true,align : 'left',valign : 'middle'},
			{title : '.',field : 'uuid',align : 'left',sortable : true,valign : 'middle',visible:false},
			{title : '规则名称',field : 'name',align : 'left',sortable : true,valign : 'middle'},
			{title : '规则类型',field : 'type',sortable : true,align : 'left',valign : 'middle', sortable: true},
			{title : '规则',field : 'rule',sortable : true,align : 'left',valign : 'middle'},
			{title : '操作', align : 'left',valign : 'middle', events: operateEvents,formatter : function(value, row, index) {
				var C = "<i  type='button' id='clickC'  class=' btn btn-default fa fa-edit' title='编辑' ></i> ";
				var D = "<i  type='button' id='clickD'  class=' btn btn-default fa fa-remove' title='删除' ></i> ";
				var E ="";
				if(row['type']=="连接"){
					E ="<i  type='button' id='clickE'  class=' btn btn-default fa fa-cog' title='编辑详细页面' ></i> ";
				}
				return C+D+E;
			}},
		],
	});
	// 表格
	$("#next_page_rule_id").val(ruler.groupList.nextPageRule);
}


