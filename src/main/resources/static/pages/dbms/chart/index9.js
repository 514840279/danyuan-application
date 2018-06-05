function setChart9(id,title,legend_data,xAxis_data,series_data,theme){
    // 指定图表的配置项和数据
	var myChart9 = echarts.init(document.getElementById(id),theme);

	option = {
		    title: {
		        text: title,
//		        subtext: '数据来自网络'
		    },
		    tooltip: {
		        trigger: 'axis',
		        axisPointer: {
		            type: 'shadow'
		        }
		    },
		    legend: {
		        data: legend_data
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis: {
		        type: 'value',
		        position: 'top',
		        boundaryGap: [0, 0.01]
		    },
		    yAxis: {
		        type: 'category',
		        data: xAxis_data
		    },
		    series: series_data
		};


    // 使用刚指定的配置项和数据显示图表。
    myChart9.setOption(option,true);
}
 