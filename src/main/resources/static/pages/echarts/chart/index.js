window.groupoperateEvents = {
		// 修改
        'click #clickA ': function (e, value, row, index) {
        	modals.openWin({
    	    	winId:"add_config_table",
    	    	title:'修改分组信息',
    	    	width:'400px',
    	    	url:"/sysPlantChartDimensionGroup/addBefor?uuid="+row.uuid
    	    });
        	
    },
	    'click #clickE': function (e, value, row, index) {
	    	// 删除
	    	bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						var url = "/sysPlantChartDimensionGroup/deleteAll";
						var param={list:[row]};
						ajaxPost(url, param, deleteInfoSuccess, 5000, findError);
					}
				}
			});
	},
	// 查看
    'click #clickB ': function (e, value, row, index) {
		groupUuid = row.uuid;
    	url = "/sysPlantChartDimension/findAllDime?uuid="+groupUuid;
		$("#chart_context").load(url);
    },
	// 查看
    'click #clickC ': function (e, value, row, index) {
		groupUuid = row.uuid;
		
		// 获取屏幕宽度
		url = "/sysPlantChartDimension/showAllDime?uuid="+groupUuid;
    	
    	modals.openWin({
	    	winId:"show_config_table",
	    	title:'修改分组信息',
	    	width:screen.width+'px',
	    	url:url
	    });
//    	 a()
    }
	
	
}

function a(){
	document.write(
	"屏幕分辨率为："+screen.width+"*"+screen.height
	+"<br />"+
	"屏幕可用大小："+screen.availWidth+"*"+screen.availHeight
	+"<br />"+
	"网页可见区域宽："+document.body.clientWidth
	+"<br />"+
	"网页可见区域高："+document.body.clientHeight
	+"<br />"+
	"网页可见区域宽(包括边线的宽)："+document.body.offsetWidth
	+"<br />"+
	"网页可见区域高(包括边线的宽)："+document.body.offsetHeight
	+"<br />"+
	"网页正文全文宽："+document.body.scrollWidth
	+"<br />"+
	"网页正文全文高："+document.body.scrollHeight
	+"<br />"+
	"网页被卷去的高："+document.body.scrollTop
	+"<br />"+
	"网页被卷去的左："+document.body.scrollLeft
	+"<br />"+
	"网页正文部分上："+window.screenTop
	+"<br />"+
	"网页正文部分左："+window.screenLeft
	+"<br />"+
	"屏幕分辨率的高："+window.screen.height
	+"<br />"+
	"屏幕分辨率的宽："+window.screen.width
	+"<br />"+
	"屏幕可用工作区高度："+window.screen.availHeight
	+"<br />"+
	"屏幕可用工作区宽度："+window.screen.availWidth
	);
}
function deleteInfoSuccess(result){
	$('#dbm_demgroup_datagrid').bootstrapTable('refresh');
}
//验证
function chartFormValidator(){
	$('#chart_dems_form').bootstrapValidator({
	    message : '验证失败消息',
	    feedbackIcons : {/* 输入框不同状态，显示图片的样式 */
	        valid : 'glyphicon glyphicon-ok',
	        invalid : 'glyphicon glyphicon-remove',
	        validating : 'glyphicon glyphicon-refresh'
	    },
	    fields : {/* 验证 */
	    	title : {/* 键名username和input name值对应 */
	            validators : {
	                notEmpty : {/* 非空提示 */
		                message : '名称不能为空'
		            }
	            }
	        }
	    }
	});
}
$(function(){
	// 新加模型
	$('#add_model_btn').bind('click',function(){
		// 弹窗设置
		modals.openWin({
	    	winId:"add_config_table",
	    	title:'修改模板',
	    	width:'1500px',
	    	url:"/sysPlantChartDimension/addBefor"
	    });
	})
	
//	// 新建分组
//	$('#add_group_btn').bind('click',function(){
//		// 弹窗设置
//		modals.openWin({
//	    	winId:"add_config_table",
//	    	title:'添加组',
//	    	width:'500px',
//	    	url:"/sysPlantChartDimensionGroup/addBefor"
//	    });
//	})
	
	$('#add_group_refresh').bind('click',function(){
		groupUuid = null;
		// 弹窗设置
		loadGroup()
		$('#dbm_demgroup_datagrid').bootstrapTable('refresh');
	})
	groupUuid = null;
	// 默认展示页面
	loadGroup()
	//loadgrouptable();
});
var groupUuid = null;
function loadGroup(){
	url = "/sysPlantChartDimension/findAllDime3?uuid="+groupUuid;
	$("#chart_context").load(url);
}

//Modal验证销毁重构
$('#add_config_table').on('hidden.bs.modal', function() {
    $("#chart_dem_form").data('bootstrapValidator').destroy();
    $('#chart_dem_form').data('bootstrapValidator', null);
   
});


function loadgrouptable(){
	
	// bootstrap table
	$('#dbm_demgroup_datagrid').bootstrapTable({
		url : "/sysPlantChartDimensionGroup/findAll",
		dataType : "json",
//		toolbar : '#dbm_config_table_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
//		sortable : true, // 是否启用排序
//		sortOrder : "asc", // 排序方式
//		pagination : true, // 分页
//		pageNumber : 1, // 初始化加载第一页，默认第一页
//		pageSize : 10, // 每页的记录行数（*）
//		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
//		strictSearch : true,
//		showColumns : true, // 是否显示所有的列
//		showRefresh : true, // 是否显示刷新按钮
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
//		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
//		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
//		cardView : false, // 是否显示详细视图
//		detailView : false, // 是否显示父子表
//		showExport: true,                    
//        exportDataType: 'all',
//        exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],  //导出文件类型
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
		singleSelect : true,
        queryParamsType : "undefined",
        contentType: "application/json",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
             return {info:{title:params.searchText}};
		},
		columns : [
			{title : '主键',field:'uuid',align : 'left',visible:false,switchable:false},
			{title : '分组名',field:'title',align : 'left'},
			{title : '操作',align : 'left',  events: groupoperateEvents,formatter:optionFormatter},
		],
	}).on('click-row.bs.table', function (e, row, element){
		$('.success').removeClass('success');//去除之前选中的行的，选中样式
		$(element).addClass('success');//添加当前选中的 success样式用于区别
		groupUuid = row.uuid;
//		url = "/pages/plant/chart/build.html";
//		$("#chart_context").load(url);
	});
}

function optionFormatter(e,row,index){
	var statue = row.status;
	return 	"<i  type='button' id='clickA'  class=' btn btn-default fa fa-edit' title='编辑' ></i> "
			+"<i  type='button' id='clickB'  class=' btn btn-default fa fa-search' title='查看'></i> "
			+"<i  type='button' id='clickC'  class=' btn btn-default fa fa-line-chart' title='查看'></i> "
			+"<i  type='button' id='clickE'  class=' btn btn-default fa fa-remove' title='删除'></i> "
		  ;
}
