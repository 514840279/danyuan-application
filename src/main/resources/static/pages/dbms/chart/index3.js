function setChart3(id,title,legend_data,xAxis_data,series_data,theme){
    // 指定图表的配置项和数据
	var myChart3 = echarts.init(document.getElementById(id),theme);

	option = {
//	    title: {
//	        text: title
//	    },
	    tooltip: {
	        trigger: 'axis'
	    },
	    legend: {
	        data:legend_data
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    toolbox: {
	        feature: {
	            saveAsImage: {}
	        }
	    },
	    xAxis: {
	        type: 'category',
	        boundaryGap: false,
	        data: xAxis_data
	    },
	    yAxis: {
	        type: 'value'
	    },
	    series: series_data
	};

    // 使用刚指定的配置项和数据显示图表。
    myChart3.setOption(option,true);
}
 