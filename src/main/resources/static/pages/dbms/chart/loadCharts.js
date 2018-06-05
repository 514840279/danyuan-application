
(function() {
	var showCharts = function(options) {
		this.options = $.extend({
			id : "1",
			uuid:'',
			title : '',
			theme : "walden"
		}, options);
		this.init(options);
	};
	
	showCharts.prototype.init = function(options){
		var param = {
				uuid:this.options.uuid
		};
		jQuery.ajax({
			type : 'POST',
			url : "/sysPlanStatisticsChart/build",
			dataType : 'json',
			cache : false,
			contentType : 'application/json',
			data : JSON.stringify(param),
			success : function(result) {
				var chartType = result.chartType;
				if("pie" == chartType){
					// 饼图 pie
					setChart1(options.id,options.title,result.legend_data, result.series_data, options.theme);
				}else if("map" == chartType){
					// 地图
					setChart2(options.id,options.title,result.series_data,options.theme);
				}else if("line" == chartType){
					// 折线
					setChart3(options.id,options.title,result.legend_data,result.xAxis_data,result.series_data, options.theme);
				}else if("bar" == chartType){
					// 柱图
					setChart4(options.id,options.title,result.legend_data,result.xAxis_data,result.series_data, options.theme);
				}else if("tree" == chartType){
					// 树图
					setChart5(options.id,result.series_data, options.theme);
				}else if("sunburst" == chartType){
					// 旭日图
//					setChart6(options.id,result.series_data, options.theme);
				}else if("rompie" == chartType){
					// 环形图
					setChart7(options.id,options.title,result.legend_data,result.series_data, options.theme);
				}else if("nanpie" == chartType){
					// 南丁格尔图
					setChart8(options.id,options.title,result.legend_data,result.series_data, options.theme);
				}else if("tbar" == chartType){
					le = [];
					for (var i = 0; i < result.xAxis_data.length; i++) {
						le[i] = result.xAxis_data[result.xAxis_data.length-i-1]
					}
					for (var i = 0; i < result.series_data.length; i++) {
						tt=[]
						for (var ij = 0; ij < result.series_data[i].data.length; ij++) {
							tt[ij]=result.series_data[i].data[result.series_data[i].data.length-ij-1];
						}
						result.series_data[i].data=tt;
					}
					// 条形图
					setChart9(options.id,options.title,result.legend_data,le,result.series_data, options.theme);
				}
			}
		});
		
			
	}
	
	window.showCharts = showCharts;
}());
