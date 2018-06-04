function setChart4(id,title,legend_data,xAxis_data,series_data,theme){
    // 指定图表的配置项和数据
	var myChart4 = echarts.init(document.getElementById(id),theme);

	option = {
//	    color: ['#3398DB'],
//		title: {
//	        text: title
//	    },
	    tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
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
	    xAxis : [
	        {
	            type : 'category',
	            data : xAxis_data,
	            axisTick: {
	                alignWithLabel: true
	            }
	        }
	    ],
	    toolbox: {
	        feature: {
	            saveAsImage: {}
	        }
	    },
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : series_data
	};

    // 使用刚指定的配置项和数据显示图表。
    myChart4.setOption(option,true);
}
 