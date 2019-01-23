temp_index_number = 1;
lenth = 0;
paramList = []
var _type = "一键查询单表多个不同索引拼接";
var nodeList=[];
$(function() {
	// 查询条件展示
	// paramList
	// search bar 数据
	var url = '/sysDbmsUserIndexInfo/findAll';
	ajaxPost(url, null, add_user_index_sucess, 1000, findError);
	
	// 节点信息
	var url = '/sysChartNode/findAll';
	ajaxPost(url, {}, add_all_node_sucess, 1000, findError);

	searchButtonClick();
	
	// 全屏
	$("#full_screen_button_id").bind("click",function(){
		$("#full_screen_id").css({"width":window.screen.width,"heigth":window.screen.heigth})
	})

});
function add_all_node_sucess(result){
	console.log(result);
	nodeList = result.data;
	var group = $("#group_title")
	result.data.forEach(function(data){
		var span = document.createElement("span");
		$(span).attr("class","lable  label-default").css("background-color",data.fillColor).text(data.nodeDesc==null||data.nodeDesc==""?data.nodeName:data.nodeDesc)
		group.append(span);
		group.append(" ");
	})
}

var paramString = ""
function searchButtonClick() {

	$("#search_button").bind("click", function() {
		// var desc = $(".search_bar").find("li.active").text();
		var userIndex = $(".search_bar").find("li.active").attr("userIndex");
		var searchText = $("#keyword").val();

		if (searchText == null || searchText == "") {
			alert("请输入关键字");
			return;
		}
		var userDesc = $(".search_bar").find("li.active").text();
		paramList = []
		paramList.push({
			"userIndex" : userIndex,
			"userDesc" : userDesc,
			"value" : searchText,
			"operator" : "eq"
		});
		paramString = JSON.stringify(paramList);
		var url = '/graph/rel';
		ajaxPost(url, {
			"username" : username,
			paramString : paramString,
			paramList : paramList
		}, findAllTypeSucess, null, findError);
	})
}

// search bar
function add_user_index_sucess(result) {
	$.each(result, function(index, value) {
		if (value.deleteFlag == 1) {
			// 加载数据
			var li = '<li userIndex="' + value.userIndex
					+ '" userPlaceholder="' + value.userPlaceholder
					+ '"><a href="#">' + value.userDesc + '</a></li>'
			$(".search_bar").append(li);
		}
	});
	$(".search_bar").find("li").click(function() {
		$(".search_bar").find("li").removeClass("active");
		$(this).addClass("active");
		var userPlaceholder = $(this).attr("userPlaceholder");
		if ("null" != userPlaceholder) {
			$("#keyword").attr("placeholder", userPlaceholder);
		} else {
			$("#keyword").attr("placeholder", "请输入关键字");
		}

	});
	$(".search_bar").find("li:eq(0)").click();
}

var links = [];
var nodes = {};
// 点击节点成功后函数 
function successFindNodeRel(result){
	
	
	// 关系配置
	result.links.forEach(function(link) {
	  link.source = nodes[link.source] || (nodes[link.source] = {name: link.source});
	  link.target = nodes[link.target] || (nodes[link.target] = {name: link.target});
	});
	
	result.data.forEach(function(data){
		nodes[data.name].type = data.type;
		nodes[data.name].properties=data.properties;
	});
	
	links = links.concat(result.links);
	makegraph()
}


// 分类别添加
function findAllTypeSucess(result) {
	var rows = $("#mainOracleDiv").find(".row");

	links = [];
	nodes = {};
	
	// 关系配置
	links = result.links;
	links.forEach(function(link) {
	  link.source = nodes[link.source] || (nodes[link.source] = {name: link.source});
	  link.target = nodes[link.target] || (nodes[link.target] = {name: link.target});
	});
	
	result.data.forEach(function(data){
		nodes[data.name].type = data.type;
		nodes[data.name].properties=data.properties;
	});
		
	
	
	makegraph();
}

// 创建图
function makegraph(){
	
	// 清空
	$("#show_greph").empty();
	// 重建
	var width = 1160,
    height = 980;
	
	var svg = d3.select("#show_greph").append("svg")
	    .attr("width", width)
	    .attr("height", height);
	
	//  ****************** 以下是d3配置

	var force = d3.layout.force()//layout将json格式转化为力学图可用的格式
	    .nodes(d3.values(nodes))//设定节点数组
	    .links(links)//设定连线数组
	    .size([width, height])//作用域的大小
	    .linkDistance(180)//连接线长度
	    .charge(-1500)//顶点的电荷数。该参数决定是排斥还是吸引，数值越小越互相排斥
	    .on("tick", tick)//指时间间隔，隔一段时间刷新一次画面
	    .start();//开始转换


	
	//箭头
	var marker=
	    svg.append("marker")
	    //.attr("id", function(d) { return d; })
	    .attr("id", "resolved")
	    //.attr("markerUnits","strokeWidth")//设置为strokeWidth箭头会随着线的粗细发生变化
	    .attr("markerUnits","userSpaceOnUse")
	    .attr("viewBox", "0 -5 10 10")//坐标系的区域
	    .attr("refX",32)//箭头坐标
	    .attr("refY", -1)
	    .attr("markerWidth", 12)//标识的大小
	    .attr("markerHeight", 12)
	    .attr("orient", "auto")//绘制方向，可设定为：auto（自动确认方向）和 角度值
	    .attr("stroke-width",2)//箭头宽度
	    .append("path")
	    .attr("d", "M0,-5L10,0L0,5")//箭头的路径
	    .attr('fill','#ccc');//箭头颜色

	/* 将连接线设置为曲线
	var path = svg.append("g").selectAll("path")
	    .data(force.links())
	    .enter().append("path")
	    .attr("class", function(d) { return "link " + d.type; })
	    .style("stroke",function(d){
	        //console.log(d);
	       return "#A254A2";//连接线的颜色
	    })
	    .attr("marker-end", function(d) { return "url(#" + d.type + ")"; });
	*/

	//设置连接线    
	var edges_line = svg.selectAll(".edgepath")
	    .data(force.links())
	    .enter()
	    .append("path")
	    .attr({
	          'd': function(d) {return 'M '+d.source.x+' '+d.source.y+' L '+ d.target.x +' '+d.target.y},
	          'class':'edgepath',
	          //'fill-opacity':0,
	          //'stroke-opacity':0,
	          //'fill':'blue',
	          //'stroke':'red',
	          'id':function(d,i) {return 'edgepath'+i;}})
	    .style("stroke",function(d){
	         var lineColor;
	         //根据关系的不同设置线条颜色
             lineColor="#A5ABB6";
	         return lineColor;
	     })
	    .style("pointer-events", "none")
	    .style("stroke-width",1.5)//线条粗细
	    .attr("marker-end", "url(#resolved)" );//根据箭头标记的id号标记箭头

	var edges_text = svg.append("g").selectAll(".edgelabel")
	.data(force.links())
	.enter()
	.append("text")
	.style("pointer-events", "none")
	//.attr("class","linetext")
	.attr({  'class':'edgelabel',
	               'id':function(d,i){return 'edgepath'+i;},
	               'dx':80,
	               'dy':0,
	               'font-size':8,
	               //'fill':'#aaa'
	               });

	//设置线条上的文字
	edges_text.append('textPath')
	.attr('xlink:href',function(d,i) {return '#edgepath'+i})
	.style("pointer-events", "none")
	.text(function(d){return d.rela;});

	//圆圈
	var circle = svg.append("g").selectAll("circle")
	    .data(force.nodes())//表示使用force.nodes数据
	    .enter().append("circle")
	    .style("fill",function(node){
	    	var color;//圆圈背景色
	    	
	    	nodeList.forEach(function(type){
	    		if(type.nodeName == node.type){
	    			 color=type.fillColor;
	    		}
	    	})
	        return color;
	    })
	    .style('stroke',function(node){ 
	        var color;//圆圈线条的颜色
	        nodeList.forEach(function(type){
	    		if(type.nodeName == node.type){
	    			 color=type.strokeColor;
	    		}
	    	})
	        return color;
	    })
	    .attr("r", 28)//设置圆圈半径
	    .on("click",function(node){
	        //单击时让连接线加粗
	        edges_line.style("stroke-width",function(line){
	            if(line.source.name==node.name || line.target.name==node.name){
	                return 4;
	            }else{
	                return 0.5;
	            }
	        });
	        // d3.select(this).style('stroke-width',2);
	        // show detial info
	        var detial = $("#show_detial_infor");
	        detial.empty();
	    	node.properties.forEach(function(data){
	    		var span = document.createElement("span");
	    		var spanName = document.createElement("strong");
	    		$(spanName).text(data.desc+":");
	    		var spanValue = document.createElement("span");
	    		$(spanValue).text(data.value);
	    		$(span).append(spanName);
	    		$(span).append(spanValue);
	    		detial.append(span);
	    		detial.append(" ");
	    	})

	    }).on("dblclick",function(node){
	        // 二次查询
	        var url = "/graph/node"
	    	var param = node;
	        ajaxPost(url,param,successFindNodeRel)
	    })
	    .call(force.drag);//将当前选中的元素传到drag函数中，使顶点可以被拖动
	    /* 
     circle.select("text")  
	    .attr("dy", ".35em")  
	    .attr("text-anchor", "middle")//在圆圈内添加文字  
	    .text(function(d) { 
	        console.log(d.properties[0].value);
	        return d.properties[0].value; 
	    }); */

	  //圆圈的提示文字
	  circle.append("svg:title")  
	        .text(function(node) { 
	        	var text="";
	        	$.each(node.properties,function(index,value){
				if(index>0){
					text = text + " , ";
				}
				text = text + value.desc +":"+value.value;
			})
	        	return text;
	         });  
	/* 矩形
	var rect=svg.append("rect")
	         .attr({"x":100,"y":100,
	                "width":100,"height":50,
	                "rx":5,//水平圆角
	                "ry":10//竖直圆角
	             })
	          .style({
	             "stroke":"red",
	             "stroke-width":1,
	             "fill":"yellow"
	});*/
	var text = svg.append("g").selectAll("text")
	    .data(force.nodes())
	    //返回缺失元素的占位对象（placeholder），指向绑定的数据中比选定元素集多出的一部分元素。
	    .enter()
	    .append("text")
	    .attr("dy", ".35em")  
	    .attr("text-anchor", "middle")//在圆圈中加上数据  
	    .style('fill',function(node){
	        var color;//文字颜色
	            color="#A254A2";
	        return color;
	    }).attr('x',function(d){
	        // console.log(d.name+"---"+ d.name.length);
	        var re_en = /[a-zA-Z]+/g;
	        var title = d.properties[0].value;
	        d.properties.forEach(function(p){
	        	if(p.title==1){
	        		title = p.value;
	        	}
	        })
	        
	        //如果是全英文，不换行
	        if(title.match(re_en)){
	             d3.select(this).append('tspan')
	             .attr('x',0)
	             .attr('y',2)
	             .attr('font-size',10)
	             .text(function(){ 
	            	 
	            	 return title;
	             
	             });
	        }
	        //如果小于四个字符，不换行
	        else if(title.length<=4){
	             d3.select(this).append('tspan')
	            .attr('x',0)
	            .attr('y',2)
	            .attr('font-size',10)
	            .text(function(){
	            	return title;
	            	});
	        }else{
	            var top=title.substring(0,4);
	            var bot=title.substring(4,title.length);
	            d3.select(this).text(function(){return '';});
	            d3.select(this).append('tspan')
	                .attr('x',0)
	                .attr('y',-7)
	                .attr('font-size',10)
	                .text(function(){return top;});

	            d3.select(this).append('tspan')
	                .attr('x',0)
	                .attr('y',10)
	                .attr('font-size',10)
	                .text(function(){return bot;});
	        }
	        //直接显示文字    
	        /*.text(function(d) { 
	        return d.name; */
	    });
	
	

	/*  将文字显示在圆圈的外面 
	var text2 = svg.append("g").selectAll("text")
	     .data(force.links())
	    //返回缺失元素的占位对象（placeholder），指向绑定的数据中比选定元素集多出的一部分元素。
	    .enter()
	    .append("text")
	    .attr("x", 150)//设置文字坐标
	    .attr("y", ".50em")
	    .text(function(d) { 
	        //console.log(d);
	        //return d.name; 
	        //return d.rela;
	        console.log(d);
	        return  '1111';
	    });*/

	function tick() {
	  //path.attr("d", linkArc);//连接线
	  circle.attr("transform", transform1);//圆圈
	  text.attr("transform", transform2);//顶点文字
	  //edges_text.attr("transform", transform3);
	  //text2.attr("d", linkArc);//连接线文字
	  //console.log("text2...................");
	  //console.log(text2);
	  //edges_line.attr("x1",function(d){ return d.source.x; });
	  //edges_line.attr("y1",function(d){ return d.source.y; });
	  //edges_line.attr("x2",function(d){ return d.target.x; });
	  //edges_line.attr("y2",function(d){ return d.target.y; });
	    
	  //edges_line.attr("x",function(d){ return (d.source.x + d.target.x) / 2 ; });
	  //edges_line.attr("y",function(d){ return (d.source.y + d.target.y) / 2 ; });


	  edges_line.attr('d', function(d) { 
	      var path='M '+d.source.x+' '+d.source.y+' L '+ d.target.x +' '+d.target.y;
	      return path;
	  });  
	    
	  edges_text.attr('transform',function(d,i){
	        if (d.target.x<d.source.x){
	            bbox = this.getBBox();
	            rx = bbox.x+bbox.width/2;
	            ry = bbox.y+bbox.height/2;
	            return 'rotate(180 '+rx+' '+ry+')';
	        }
	        else {
	            return 'rotate(0)';
	        }
	   });
	}

	//设置连接线的坐标,使用椭圆弧路径段双向编码
	function linkArc(d) {
	    //var dx = d.target.x - d.source.x,
	  // dy = d.target.y - d.source.y,
	     // dr = Math.sqrt(dx * dx + dy * dy);
	  //return "M" + d.source.x + "," + d.source.y + "A" + dr + "," + dr + " 0 0,1 " + d.target.x + "," + d.target.y;
	  //打点path格式是：Msource.x,source.yArr00,1target.x,target.y  
	  
	  return 'M '+d.source.x+' '+d.source.y+' L '+ d.target.x +' '+d.target.y
	}
	//设置圆圈和文字的坐标
	function transform1(d) {
	  return "translate(" + d.x + "," + d.y + ")";
	}
	function transform2(d) {
	      return "translate(" + (d.x) + "," + d.y + ")";
	}

}
