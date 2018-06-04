function setChart7(id,title,legend_data,series_data,theme){
    // 指定图表的配置项和数据
	var myChart7 = echarts.init(document.getElementById(id),theme);

	option = {
		    title: {
		        text: title,
		        subtext: '',
		        x: 'center',
		        y: 'center',
		        textStyle: {
		            fontWeight: 'normal',
		            fontSize: 20
		        }
		    },
		    tooltip: {
		        trigger: 'item',
		        formatter: function(params, ticket, callback) {
		            var res = params.seriesName;
		            res += '<br/>' + params.name + ' : ' + params.value +'<br/>' +'比例：'+params.percent+ '%';
		            return res;
		        }
		    },
		    toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    },
		    legend: {
		        orient: 'vertical',
		        right: '0%',
		        bottom: '0%',
		        data: legend_data,
		        itemWidth: 20,
		        itemHeight: 10
		    },
		    series: [{
		        name: title,
		        type: 'pie',
		        selectedMode: 'single',
		        radius: ['40%', '70%'],
		        label: {
		            normal: {
		                position: 'inner',
		                textStyle: {
		                    color: '#fff',
		                    fontSize: 10
		                }
		            }
		        },
		        labelLine: {
		            normal: {
		                show: false
		            }
		        },
		        data: series_data
		    }]
		};


    // 使用刚指定的配置项和数据显示图表。
    myChart7.setOption(option,true);
}
 