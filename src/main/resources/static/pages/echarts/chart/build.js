$(function(){
	
	// 初始化
	init();
})

var demUuid = null;

//初始化
function init(){
	var body = $("#body");
	 // 构建多个div的box
	$.each(sysPlantChartDimensionList,function(index,sysPlantChartDimension){
		
		var chart_content = body.find("#chart_col:eq(0)").clone(false);
		chart_content.css({"display":""});
		chart_content.find('#chart_uuid').attr("title",sysPlantChartDimension.uuid);
		chart_content.find('#groupUuid').attr("title",sysPlantChartDimension.groupUuid);
		chart_content.find(".box-title").text(sysPlantChartDimension.title);
		chart_content.find("#dbm_config_table_datagrid1").attr("id",sysPlantChartDimension.uuid)
		
		if(sysPlantChartDimension.deleteFlag == 1){
			chart_content.find("#success").attr("class","box box-primary")
		}else{
			chart_content.find("#success").attr("class","box box-danger")
		}
		
		body.append(chart_content);
		
		buildChart(sysPlantChartDimension);
		//console.log("chart_layout_select_id:"+chart_layout_select_id+",chart_group_select_id:"+chart_group_select_id);
		if(chart_layout_select_id!=""&&chart_group_select_id==""){
			chart_content.find('button[data-widget="edit"]').css({"display":"none"});
			chart_content.find('button[data-widget="search"]').css({"display":"none"});
//			chart_content.find('button[data-widget="file"]').css({"display":"none"});
//			chart_content.find('button[data-widget="remove"]').css({"display":"none"});
//			chart_content.find('button[data-widget="delete"]').css({"display":"none"});
		}else if(chart_layout_select_id==""&&chart_group_select_id!=""){
			chart_content.find('button[data-widget="edit"]').css({"display":""});
			chart_content.find('button[data-widget="search"]').css({"display":""});
//			chart_content.find('button[data-widget="file"]').css({"display":""});
//			chart_content.find('button[data-widget="remove"]').css({"display":""});
//			chart_content.find('button[data-widget="delete"]').css({"display":""});
		}
		
		// 修改
		chart_content.find('button[data-widget="edit"]').bind("click",function(){
			var uuid = $(this).parent().attr("title");
			modals.openWin({
		    	winId:"add_config_table",
		    	title:'图表修改',
		    	width:'1500px',
		    	url:"/sysPlantChartDimension/addBefor3?uuid="+uuid
		    });
		})
		
		// 查看大图
		chart_content.find('button[data-widget="search"]').bind("click",function(){
			var uuid = $(this).parent().attr("title");
			modals.openWin({
		    	winId:"add_config_table",
		    	title:'查看大图',
		    	width:'1500px',
		    	url:"/pages/plant/chart3/onechart.html"
		    });
			
			new showCharts({
				  id :"dbm_config_table_onechart",
				  uuid:sysPlantChartDimension.uuid,
				  title:sysPlantChartDimension.title,
				  theme:sysPlantChartDimension.theme==null?"walden":sysPlantChartDimension.theme
			});
			

		})
		
		// 分组
		chart_content.find('button[data-widget="file"]').bind("click",function(){
			demUuid = $(this).parent().attr("title");
			groupUuid = $(this).find("#groupUuid").attr("title");
			
			modals.openWin({
		    	winId:"add_config_table",
		    	title:'修改分组',
		    	width:'500px',
		    	url:"/pages/plant/chart/change.html"
		    });
		})
		
		// 隐藏
		chart_content.find('button[data-widget="remove"]').bind("click",function(){
			var el = $(this).parent().parent().parent().parent();
			el.remove();
		})
		
		// 删除模型
		chart_content.find('button[data-widget="delete"]').bind("click",function(){
			var uuid = $(this).parent().attr("title");
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysPlantChartDimension/delete";
						var param={uuid:uuid};
						ajaxPost(url, param, deleteSuccess, 5000, findError);
					}
				}
			});
			
		})
		
	});
}

// 删除成功回调方法 ，删除节点
function deleteSuccess(result){
	var el = $('div[title="'+result.uuid+'"]').parent().parent().parent();
	el.remove();
}

// 构建图
function buildChart(sysPlantChartDimension){
	console.log(sysPlantChartDimension)
	new showCharts({
		  id :sysPlantChartDimension.uuid,
		  uuid:sysPlantChartDimension.uuid,
		  title:sysPlantChartDimension.title,
		  theme:sysPlantChartDimension.theme==null?"walden":sysPlantChartDimension.theme
	});
}