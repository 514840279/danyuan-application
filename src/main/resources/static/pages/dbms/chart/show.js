$(function(){
	var body = $("#show_body");
	 // 构建多个div的box
	$.each(sysPlantChartDimensionList,function(index,sysPlantChartDimension){
		var chart_content = body.find("#chart_col:eq(0)").clone(false);
		width = sysPlantChartDimension.width/12*screen.width;
//		console.log(width)
		chart_content.css({"width":width+"px","display":"","float":"left"});
		var html ='<div id="show'+sysPlantChartDimension.uuid+'" style="width: 100%; height: '+sysPlantChartDimension.heigth+'px;" title="'+sysPlantChartDimension.title+'"></div>';
		chart_content.find("#config_table").append(html);
		body.find("#client_row").append(chart_content);
		buildChart(sysPlantChartDimension);
	});
	
	loadSelectTheme();
	$("#loadimg").bind("click",function(){
		var w = $("#client_row").width();  
		var h = $("#code").height();//要将 canvas 的宽高设置成容器宽高的 2 倍  
		var canvas = document.createElement("canvas");  
		    canvas.width = w * 2;  
		    canvas.height = h * 2;  
		    canvas.style.width = w + "px";  
		    canvas.style.height = h + "px";  
		var context = canvas.getContext("2d");//然后将画布缩放，将图像放大两倍画到画布上  
		    context.scale(2,2);  
		html2canvas(document.getElementById('client_row')).then(canvas =>{  
            var imgUri = canvas.toDataURL("image/png").replace("image/png", "image/octet-stream"); // 获取生成的图片的url  
//            window.location.href= imgUri; // 下载图片  
         // 下载后的问题名
            var filename =  getNowFormatDate()+"___"+getUuid() + '.png';
            // download
            saveFile(imgUri,filename);
        });
	})
})

var saveFile = function(data, filename){
    var save_link = document.createElementNS('http://www.w3.org/1999/xhtml', 'a');
    save_link.target ="_blank";
    save_link.href = data;
    save_link.download = filename;
//    location = data;
    save_link.click();
//    var event = document.createEvent('MouseEvents');
//    event.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
//    save_link.dispatchEvent(event);
    
};
   


// 加载祖逖数据
function loadSelectTheme(){
	var url = "/sysDicName/findkeyList";
	var param={code:"chartTheme"};
	ajaxPost(url, param, addchartThemeSuccess, 5000, findError);
}

function addchartThemeSuccess(result){
	var data=[{id:'',text:'请选择'}]
	$.each(result,function(index,value){
		data.push({id:value.keyValue,text:value.keyword})
	})
	$('#change_theme_id').select2({
		placeholder: "请选择",
		tags: true,
	    data:data,
	    width:150
	});
	$('#change_theme_id').on('select2:select', function (evt) {
		change_theme_id = evt.params.data.id;
		var div = $("#show_body").find("#client_row").find("div").find("div").find("div:eq(0)");
		$.each(div,function(index,value){
			id = $(value).attr("id");
			if(id!=null){
//				console.log(id)
//				console.log(change_theme_id)
				var char = echarts.getInstanceByDom(document.getElementById(id));
//				var option = char.getOption();
//				console.log(option)
				char.dispose();
//				var char2 = echarts.init(document.getElementById(id),change_theme_id);
//				char2.setOption(option,true);
//				console.log(id.substring(4))
				new showCharts({
					  id :id,
					  uuid:id.substring(4),
					  title:$("#"+id).attr("title"),
					  theme:change_theme_id
				});
			}
		})
	});
}

// 构建图
function buildChart(sysPlantChartDimension){
	new showCharts({
		  id :"show"+sysPlantChartDimension.uuid,
		  uuid:sysPlantChartDimension.uuid,
		  title:sysPlantChartDimension.title,
		  theme:sysPlantChartDimension.theme==null?"walden":sysPlantChartDimension.theme
	});
	height =$("#show_body").find("#client_row").offsetHeight+"px";
	$("#show_body").css({"height":height});
}