function setChart2(id,title,series_data,theme){
    // 指定图表的配置项和数据
	max=0;
	$.each(series_data,function(index,value){
		max = value.value>max?value.value:max;
	})
	var myChart2 = echarts.init(document.getElementById(id),theme);
	  option2 = {
        title: {
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
//	      	x: 'right',
            selectedMode: false,
            data: []
        },
        dataRange: {
//	        orient: 'horizontal',
            min: 0,
            max: max,
            text: [],           // 文本，默认为数值文本
            splitNumber: 0
        },
        toolbox: {
	        feature: {
	            saveAsImage: {}
	        }
	    },
        series: [
            {
                name: title,
                type: 'map',
                mapType: 'china',
                mapLocation: {
                    x: 'left'
                },
                selectedMode: 'multiple',
                itemStyle: {
                    normal: { label: { show: true } },
                    emphasis: { label: { show: true } }
                },
                data: series_data
            }
        ],
        animation: false
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart2.setOption(option2,true);
}
 