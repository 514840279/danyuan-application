function setChart6(id,series_data,theme){
    // 指定图表的配置项和数据
	var myChart6 = echarts.init(document.getElementById(id),theme);

	option = {
		    series: {
		        type: 'sunburst',
		        // highlightPolicy: 'ancestor',
		        data: series_data,
		        radius: [0, '90%'],
		        label: {
		            rotate: 'radial'
		        }
		    }
		};

    // 使用刚指定的配置项和数据显示图表。
    myChart6.setOption(option,true);
}
 