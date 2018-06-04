

function setChart1(id,title,legend_data,series_data,theme){
    // 指定图表的配置项和数据
	myChart1 = echarts.init(document.getElementById(id),theme);
	option = {
		    title : {
		        x:'center'
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    },
		    legend: {
		        left: 'left',
		        data: legend_data
		    },
		    toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    },
		    series : [
		        {
		            name: title,
		            type: 'pie',
		            data:series_data,
		            itemStyle: {
		                emphasis: {
		                    shadowBlur: 10,
		                    shadowOffsetX: 0,
//		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
		                }
		            }
		        }
		    ]
		};

    // 使用刚指定的配置项和数据显示图表。
    myChart1.setOption(option,true);
}
 