
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
//			url : "/sysPlanStatisticsChart/build",
			url : "/sysPlanStatisticsChartByElasticsearch/build",
			dataType : 'json',
			cache : false,
			contentType : 'application/json',
			data : JSON.stringify(param),
			success : function(result) {
				window.setTimeout(function(){
					var chartType = result.chartType;
					if("pie" == chartType){
						// 饼图 pie
						setChart1(options.id,options.title,result.legend_data, result.series_data, options.theme);
					}else if("map" == chartType){
						// 地图
						setChart2(options.id,options.title,result.legend_data,result.series_data,options.theme);
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
						setChart6(options.id,result.series_data, options.theme);
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
				},100);
			}
				
		});
		
			
	}
	
	window.showCharts = showCharts;
}());




function setChart1(id,title,legend_data,series_data,theme){
    // 指定图表的配置项和数据
	myChart1 = echarts.init(document.getElementById(id),theme);
	option = {
		    title : {
		        x:'center',
	        	text:title
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    },
		    legend: {
		    	orient: 'vertical',
		    	right: '0%',
		        bottom: '0%',
		        show:false,
		        data: legend_data,
		        itemWidth: 20,
		        itemHeight: 10,
		        textStyle:{    //图例文字的样式
		            color:'#333',
		            fontSize:8
		        }
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
		            radius : '65%',
		            center:  ['45%', '40%'],
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
 
function setChart2(id,title,legend_data,series_data,theme){
	console.log(legend_data);
	console.log(JSON.stringify(series_data));
    // 指定图表的配置项和数据
	max=0;
	$.each(series_data,function(index,value){
		max_=0
		$.each(value.data,function(ind,val){
			if(max_<val.value){
				max_=val.value;
			}
		})
		max+=max_;
	})
	
	var myChart2 = echarts.init(document.getElementById(id),theme);
	  option2 = {
        title: {
        	text:title
        },
        tooltip: {
            trigger: 'item'
        },
        visualMap: {
            min: 0,
            max: max,
            left: 'left',
            top: 'bottom',
            text: ['高','低'],           // 文本，默认为数值文本
            calculable: true
        },
        toolbox: {
            show: true,
            orient: 'vertical',
            left: 'right',
            top: 'center',
            feature: {
                dataView: {readOnly: false},
                restore: {},
                saveAsImage: {}
            }
        },
        legend: {
//	      	x: 'right',
//            selectedMode: true,
            data: legend_data
        },
        dataRange: {
//	        orient: 'horizontal',
            min: 0,
            max: max,
            text: [],           // 文本，默认为数值文本
            splitNumber: 0
        },
        series: series_data,
        animation: true
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart2.setOption(option2,true);
}

function setChart3(id,title,legend_data,xAxis_data,series_data,theme){
    // 指定图表的配置项和数据
	var myChart3 = echarts.init(document.getElementById(id),theme);

	option = {
	    title: {
	        text: title
	    },
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
 
function setChart4(id,title,legend_data,xAxis_data,series_data,theme){
    // 指定图表的配置项和数据
	var myChart4 = echarts.init(document.getElementById(id),theme);

	option = {
//	    color: ['#3398DB'],
		title: {
	        text: title
	    },
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
	            },
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

function setChart7(id,title,legend_data,series_data,theme){
    // 指定图表的配置项和数据
	var myChart7 = echarts.init(document.getElementById(id),theme);

	option = {
		    title: {
		        text: title,
		        subtext: '',
		        x: '36%',
		        y: '33%',
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
		        itemHeight: 10,
		        show:false,
		        textStyle:{    //图例文字的样式
		            color:'#333',
		            fontSize:8
		        }
		    },
		    series: [{
		        name: title,
		        type: 'pie',
		        selectedMode: 'single',
		        radius: ['40%', '70%'],
		        center:  ['45%', '40%'],
		        label: {
		            normal:  false
		        },
		        data: series_data
		    }]
		};


    // 使用刚指定的配置项和数据显示图表。
    myChart7.setOption(option,true);
}

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
//		            radius : [30, 500],
		            roseType : 'area',
		            data:series_data
		        }
		    ]
		};


    // 使用刚指定的配置项和数据显示图表。
    myChart8.setOption(option,true);
}

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
 