function setChart8(id,title,legend_data,series_data,theme){
    // 指定图表的配置项和数据
	var myChart8 = echarts.init(document.getElementById(id),theme);

	option = {
		    title : {
		        text: title,
		       // subtext: '纯属虚构',
		        x:'center'
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    },
		    legend: {
		        x : 'center',
		        y : 'bottom',
		        data:legend_data
		    },
		    toolbox: {
		        show : true,
		        feature : {
		            mark : {show: true},
		            dataView : {show: true, readOnly: false},
		            magicType : {
		                show: true,
		                type: ['pie', 'funnel']
		            },
		            restore : {show: true},
		            saveAsImage : {show: true}
		        }
		    },
		    calculable : true,
		    series : [
		        {
		            name:title,
		            type:'pie',
		            radius : [30, 110],
		            roseType : 'area',
		            data:series_data
		        }
		    ]
		};


    // 使用刚指定的配置项和数据显示图表。
    myChart8.setOption(option,true);
}
 