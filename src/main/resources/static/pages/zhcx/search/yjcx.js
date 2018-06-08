temp_index_number = 1;
lenth = 0;
$(function() {

	
	// 查询条件展示
	// paramList
	var label_group = $("#label_group_id");
	$.each(paramList,function(index,value){
		var userDesc = value.userDesc;
		if(userDesc==null||userDesc ==""){
			$.each(userindexList,function(ind,val){
				if(value.userIndex == val.userIndex){
					userDesc = val.userDesc;
				}
			})
		}
		var label = label_group.find("h3:eq(0)").clone(false);
		label.text(userDesc+":"+value.value);
		label.css({"display":""});
		label_group.append(label);
	})
	// search bar 数据
	var url = '/zhcx/findAllType';
	ajaxPost(url, {"username":username}, findAllType_Sucess, null, findError);
	$("#search_grep_button").bind("click",function(){
		 $("#right-aside").removeClass("control-sidebar-open");
		 var paramsNode=[];
		 var parents = $("#node_div_parents_class").find("div.row");
		 $.each(parents,function(index,val){
			 var row = $(val);
			 var userDesc =  row.find("#title").text();
			 var value =  row.find("#value").text();
			 var userIndex = row.find("#value").attr("userIndex");
			 if(userDesc!=""){
				 paramsNode.push({
					 "userDesc":userDesc,
					 "userIndex" : userIndex,
					 "value" : value,
				 }); 
			 }
			 
		 })
		 if(paramsNode.length==0){
			 return
		 }
		jQuery("#chart_paramString").val(JSON.stringify(paramsNode));
		jQuery("#chartform").attr("action",  "/zhcx/forwardChart");
		jQuery("#chartform").submit();
	 })
});

// 分类别添加
function findAllType_Sucess(result){
	
	$.each(result,function(index,value){
		var typeUuid=value.uuid;
//		console.log(value);
		var type = $("#mainDiv").find("#show_type_id:eq(0)").clone();
		type.find("#type_text_id").text(value.typeName);
		
		// 调用表名查询
		var url_table = '/zhcx/findAllTable';
		var param_table ={
				"username":username,
				paramList:paramList,
				info:{
					typeUuid:typeUuid
				}
		}
//		console.log(typeUuid);
		jQuery.ajax({
			type : 'POST',
			url : url_table,
			dataType : 'json',
			cache : false,
			contentType : 'application/json',
			data : JSON.stringify(param_table),
			success : function(result) {
				lenth = lenth+result.length;
				var table_parrent = type.find("#show_table_id");
				$.each(result,function(index,value){
					var dbType = value.dbType;
					var esName = value.esName;
					var tabsName= value.tabsName;
					var tabsDesc= value.tabsDesc;
					var tabsId=value.uuid;
					var tabsRows = value.tabsRows==null?0:value.tabsRows;
					var table = table_parrent.find("#table_box:eq(0)").clone();
					var collapse = table.find("#table_title_id");
					collapse.text(tabsDesc);
					
					collapse.attr("href","#collapse_"+tabsId);
					table.find("#collapseTable").attr("id","collapse_"+tabsId);
					
					collapse.attr("data-parent","#accordionTable_"+tabsId);
					table.find("#accordionTable").attr("id","accordionTable_"+tabsId);
					
					table.find("table").attr("id",tabsId);
					
					var more = table.find("#for_more_table");

		    		more.css({ "cursor" : "pointer"});		
					more.bind("click", function(){
						jQuery("#tabsuuid").val(tabsId);
						jQuery("#tabsName").val(tabsName);
						jQuery("#tabsRows").val(0);
						jQuery("#dbType").val(dbType);
						jQuery("#esName").val(esName);
						jQuery("#tabsDesc").val(tabsDesc);
						jQuery("#paramString").val(paramString);
						jQuery("#type").val("单表多条件更多查询");
						jQuery("#zhlbform").attr("action",  "/zhcx/forwardZhlb");
						jQuery("#zhlbform").submit();
					});
					// 列查询
					var url_column = "/zhcx/findAllColumn";
					var param_column={
							"username":username,
							info:{tabsUuid:tabsId}
					};
					jQuery.ajax({
						type : 'POST',
						url : url_column,
						dataType : 'json',
						cache : false,
						contentType : 'application/json',
						data : JSON.stringify(param_column),
						success : function(result) {
							// 要显示的列组织；
							var column =[] ;
							$.each(result,function(index,value){
//								console.log(value);
								var userIndex = value.userIndex;
								var userIcon = value.userIcon;
								
								var colsDesc = (null != value.colsDesc ? value.colsDesc : "");
								var colsName = (null != value.colsName ? value.colsName : "");
								var colsView = ("" != colsDesc ? colsDesc : colsName);
								var coldType =(null != value.coldType ? value.coldType : "");
								if(userIndex==""||userIndex==null){
									column.push({
										"title" : colsView,
									    "field" : colsName,
									    "width":value.colsWidth==null?150:value.colsWidth,
									    "align":value.colsAlign==null?"left":value.colsAlign,
									    "valign":value.colsValign==null?"middle":value.colsValign,
									    "visible":value.pageList==null?true:value.pageList,
									    "switchable":value.colsSwitchable==null?true:value.colsSwitchable,
							    		formatter:function iconFormatter(value, row, index){
							    			if(value==null){
							    				return null;
							    			}
							    			if(coldType.indexOf("DATE")>-1||coldType.indexOf("TIME")>-1){
							    				value =new Date(parseInt(value)).format("yyyy/MM/dd"); 
//							    				value =new Date(parseInt(value)).toLocaleString(); 
							    			}
							    			if(userIcon!=null&&userIcon!=""){
							    				return f = '<i class="'+userIcon+' text-grey" title="'+value+'" userIndex="'+userIndex+'" ></i>';
							    			}
							    			return value;
							    		},
									});
								}else if(userIndex!=""){
									column.push({
										"title" : colsView,
									    "field" : colsName,
									    "width":value.colsWidth==null?150:value.colsWidth,
									    "align":value.colsAlign==null?"left":value.colsAlign,
									    "valign":value.colsValign==null?"middle":value.colsValign,
									    "visible":value.pageList==null?true:value.pageList,
									    "switchable":value.colsSwitchable==null?true:value.colsSwitchable,
							    		formatter:function otherFormatter(value, row, index){
							    			if(value==null){
							    				return null;
							    			}
							    			if(coldType.indexOf("DATE")>-1||coldType.indexOf("TIME")>-1){
							    				value =new Date(parseInt(value)).format("yyyy/MM/dd"); 
							    			}
							    			var f = value;
							    			if(userIcon==null||userIcon==""){
							    				 f = '<a class="text-blue" title="'+value+'" userIndex="'+userIndex+'" onclick="forwordYjcx(\''+value+'\',\''+userIndex+'\',\''+colsName+'\')">'+value+' </a> ';
							    			}else{
							    				 f = f = '<i class="'+userIcon+' text-blue" title="'+value+'" userIndex="'+userIndex+'" onclick="forwordYjcx(\''+value+'\',\''+userIndex+'\',\''+colsName+'\')" id="sfzh_search"></i> ';
							    			}
							    			return f;
							    		},
									});
								}
								
							})
							// 
							tabsDesc = tabsDesc==null||tabsDesc==""?tabsName:tabsDesc
							reset(tabsId,tabsName,column,result,table,tabsDesc,dbType,esName) ;
						}
					});

					table_parrent.append(table);
				});
			}
		});
		$("#mainDiv").append(type);
	})
}

function forwordYjcx(value,userIndex,colsName){
	var paramList = [];
	paramList.push({
		"userIndex" : userIndex,
		"userDesc" : colsName+"("+userIndex+")",
		"value" : value,
		"operator" : "eq"
	});
//	console.log(paramLists);
	$("#zhcx_sousuo_paramString").val(JSON.stringify(paramList));
	$("#zhcx_type").val("一键查询单表多个不同索引拼接");
	$("#sosuoform").submit();
}

Date.prototype.format = function(fmt) { 
    var o = { 
       "M+" : this.getMonth()+1,                 //月份 
       "d+" : this.getDate(),                    //日 
       "h+" : this.getHours(),                   //小时 
       "m+" : this.getMinutes(),                 //分 
       "s+" : this.getSeconds(),                 //秒 
       "q+" : Math.floor((this.getMonth()+3)/3), //季度 
       "S"  : this.getMilliseconds()             //毫秒 
   }; 
   if(/(y+)/.test(fmt)) {
           fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
   }
    for(var k in o) {
       if(new RegExp("("+ k +")").test(fmt)){
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
        }
    }
   return fmt; 
} 

//var paramsNode=[];
// 表数据加载
function reset(id,tabsName,column,sysColumn,table,tabsDesc,dbType,esName) {
	console.log(dbType);
//	var sysc = [];
//	$.each(sysColumn,function(index,valu){
//		if(valu.userIndex!=null&&valu.userIndex!=""){
//			sysc.push(valu);
//		}
//	});
	// bootstrap table
	$('#'+id).bootstrapTable({
	    url : "/zhcx/findAllTableRow",
	    dataType : "json",
	    // toolbar : '#toolbar', // 工具按钮用哪个容器
//	    cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
//	    sortable : true, // 是否启用排序
//	    sortOrder : "asc", // 排序方式
//	    pagination : true, // 分页
//	    pageNumber : 1, // 初始化加载第一页，默认第一页
//	    pageSize : 10, // 每页的记录行数（*）
//	    pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
//	    strictSearch : true,
//	    showColumns : true, // 是否显示所有的列
//	    showRefresh : true, // 是否显示刷新按钮
//	    minimumCountColumns : 2, // 最少允许的列数
//	    clickToSelect : true, // 是否启用点击选中行
//	    height : 550, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
//	    uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
//	    showToggle : true, // 是否显示详细视图和列表视图的切换按钮
//	    cardView : false, // 是否显示详细视图
//	    detailView : false, // 是否显示父子表
//	    singleSelect : false,
//	    showPaginationSwitch : true,
	    locales : "zh-CN", // 表格汉化
//	    showExport : true, // 是否显示导出
//	    exportDataType : "basic", // basic', 'all', 'selected'.
//	    search : true, // 显示搜索框
	    sidePagination : "client", // 服务端处理分页 server
	    // 设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder
	    // 设置为limit可以获取limit, offset, search, sort, order
	    queryParamsType : "undefined",
	     contentType: "application/json",
	    method : "post", // 使用get请求到服务器获取数据
	    queryParams : function queryParams(params) {
		    var param = {
	    		pageNumber: 1,    
	    		pageSize: 8,
	    		"username":username,
		        tabsName : tabsName,
		        dbType:dbType,
		        esName:esName,
		        type:_type,
		        list:sysColumn,
		        paramList:paramList
		    };
		    return param;
	    },
	    columns : column,
	    responseHandler: function(result){  // 成功时执行
//	    	console.log(result);
	    	if(result!=null && result.list!=null ){
		    	if(result.list.length>0){
		    		table.css("display","");
		    		table.parents().parents().css("display","");
		    	}
		    	if(result.list.length==8){
		    		table.find("#for_more_table").css("display","");
		    	}
	    	}
			var width_persent = (temp_index_number/lenth)*100 +'%';
			temp_index_number +=1;
			$('#progress_bar_id').css('width', width_persent);
//			
			return {data:result.list};
		}, 
		 contextMenu: '#context-menu',
		 onContextMenuItem: function(row,$ele){
			 
			 $.each(sysc,function(index,value){
				 var val = eval("row."+value.colsName);
				 if(val!=null){
					 var userDesc ="";
					 $.each(userindexList,function(ind,va){
						if(value.userIndex == va.userIndex){
							userDesc = va.userDesc;
						}
					});
					if(userDesc == "日期"){
						val = new Date(parseInt(val)).format("yyyy/MM/dd");
					};
					
					var node = {
						 "userDesc":userDesc,
						 "userIndex" : value.userIndex,
						 "value" : val,
					};
//					paramsNode.push(node);
					// 修改工具栏信息
					$("#right-aside").click();
					$("#right-aside").addClass("control-sidebar-open");
					$("#right-aside").find("ul").find("li").find("a").click();
					assideBarAppendNode(node);
				 }
			 });
		  }
	}).on('dbl-click-row.bs.table', function (e, row, ele,field) {
		$("#zhxx_mapString").val(JSON.stringify(row));
		$("#zhxx_paramString").val(JSON.stringify(sysColumn));
		$("#zhxx_tableName").val(tabsName);
		$("#zhxx_tableDesc").val(tabsDesc);
		$("#zhxxform").submit();
    }).on('click-row.bs.table', function (e, row, ele,field) {
    	$(".success").removeClass("success");
    	$(ele).addClass("success");
    });
	// 窗口大小改变时 重设表头
	$(window).resize(function() {
		$('#'+id).bootstrapTable('resetView');
	});
	
}
// 删除单组元素显示效果
function assideBarAppendNode(node){
	var parents = $("#node_div_parents_class");
	var row = parents.find(".row:eq(0)").clone();
	row.find("#title").text(node.userDesc);
	row.find("#value").text(node.value);
	row.find("#value").attr("userIndex",node.userIndex);
	row.find("#button").bind("click",function(el){
		row.remove();
	})
	row.css({"display":""});
	parents.append(row);
}

// 表添加
function findAllTable_Sucess(result){
	
	
//	console.log(result);
}


function findError(result) {
    window.parent.window.alert(JSON.stringify(result));
};