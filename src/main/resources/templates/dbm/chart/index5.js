function setChart5(id,series_data,theme){
    // 指定图表的配置项和数据
	var myChart5 = echarts.init(document.getElementById(id),theme);

	option = {
	        tooltip: {
	            trigger: 'item',
	            triggerOn: 'mousemove'
	        },
	        toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    },
	        series: [
	            {
	                type: 'tree',

	                data: series_data,

	                top: '1%',
	                bottom: '1%',
	                layout: 'radial',
	                symbolSize: 7,
	                symbol: 'emptyCircle',
	                label: {
	                    normal: {
	                        position: 'left',
	                        verticalAlign: 'middle',
	                        align: 'right',
	                        fontSize: 9
	                    }
	                },
	
	                leaves: {
	                    label: {
	                        normal: {
	                            position: 'right',
	                            verticalAlign: 'middle',
	                            align: 'left'
	                        }
	                    }
	                },
	
	                expandAndCollapse: true,
	                animationDuration: 550,
	                animationDurationUpdate: 750
	            }
	        ]
	    }

    // 使用刚指定的配置项和数据显示图表。
    myChart5.setOption(option,true);
}
 