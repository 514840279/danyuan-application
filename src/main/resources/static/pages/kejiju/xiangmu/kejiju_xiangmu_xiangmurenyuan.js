window.actionEventsrenyuan = {
	'click #kejixiangmu_renyuan_showDetail': function(e, value, row, index) {  
		data ={
			"uuid":row.uuid
		};
      //修改操作
		loadPage('/kjxmRyxxInfo/showDetail','xiangmu_renyuan_showDetail','人员详细信息',data,'reload');
    }
}
$(function() {
	
	// 添加项目页面跳转
	$('#addnew_kejiju_xiangmu_xiangmurenyuan').click(function() {
		loadPage('/kjxmRyxxInfo/upd','xiangmu_renyuan_add','添加人员',{"xmjbUuid":uuid},'reload');
	});
	
	// 修改项目页面跳转
	$('#editold_kejiju_xiangmu_xiangmurenyuan').click(function() {
		var data = $('#kejiju_xiangmu_xiangmurenyuan_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中一条数据");
		}else if(data.length == 1){
			var datetemp = {
				"uuid":data[0].uuid,
				"xmjbUuid":uuid
			}
			console.log(datetemp)
			loadPage('/kjxmRyxxInfo/upd','xiangmu_renyuan_add','修改人员',datetemp,'reload');
		}else{
			alert("只能选中一条数据");
		}
	});
	$('#deleteold_kejiju_xiangmu_xiangmurenyuan').click(function() {
		var data = $('#kejiju_xiangmu_xiangmurenyuan_table_datagrid').bootstrapTable('getAllSelections');
		if(data.length == 0){
			alert("先选中数据");
		}else if(data.length > 0){
			bootbox.setLocale("zh_CN");
			bootbox.confirm({
			message : "确定要删除选定行",
			title : "系统提示",
			callback : function(result) {
					if (result) {
						// 重载
						var url = "/kjxmRyxxInfo/delete";
						var param={list:data};
						ajaxPost(url, param, addkejiju_xiangmu_renyuanSuccess, 5000, findError);
					}
				}
			});
		}
		
	});
	
	// bootstrap table
	$('#kejiju_xiangmu_xiangmurenyuan_table_datagrid').bootstrapTable({
		url : "/kjxmRyxxInfo/list",
		dataType : "json",
		toolbar : '#kejiju_xiangmu_xiangmurenyuan_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
//		pagination : true, // 分页
//		pageNumber : 1, // 初始化加载第一页，默认第一页
//		pageSize : 10, // 每页的记录行数（*）
//		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
//		strictSearch : true,
		showColumns : true, // 是否显示所有的列
		showRefresh : true, // 是否显示刷新按钮
//		showFooter:false,
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
//		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
//		showExport: true,                    
//        exportDataType: 'all',
//        exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],  //导出文件类型
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
//		search : true, // 显示搜索框
		sidePagination: "client", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
//        queryParamsType : "undefined",
//        contentType: "application/x-www-form-urlencoded",
//		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) { 
		    var param = {  
                uuid:uuid 
             }; 
             return param;
		},
		columns : [
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'},
			{title : '负责人出生日期',field : 'headBirthdate',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人学位',field : 'headDegree',sortable : true,align : 'center',valign : 'middle'},
			{title : '负责人学历',field : 'headEducation',sortable : true,align : 'center',valign : 'middle'},
			{title : '负责人邮箱',field : 'headEmail',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人民族',field : 'headEthnicGroup',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人性别',field : 'headGender',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人才称号',field : 'headHonorary',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人证件号码',field : 'headIdNumber',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人证件类型',field : 'headIdType',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人专业',field : 'headMajor',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人移动电话',field : 'headMobileTelephone',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人姓名',field : 'headName',sortable : true,align : 'center',valign : 'middle'},
			{title : '负责人所在单位',field : 'headOrganization',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人政治面貌',field : 'headPoliticalStatus',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人职务级别',field : 'headPositionLevel',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人职务',field : 'headPositionTitle',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人职称',field : 'headProfessionalTitle',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人研究方向',field : 'headResearchDirection',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人毕业院校',field : 'headSchoolName',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '负责人办公电话',field : 'headTelephone',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人出生日期',field : 'participantBirthday',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人学位',field : 'participantDegree',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人学历',field : 'participantEducation',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人性别',field : 'participantGender',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人证件号码',field : 'participantIdNumber',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人证件类型',field : 'participantIdType',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人专业',field : 'participantMajor',sortable : true,align : 'center',valign : 'middle'},
			{title : '参加人姓名',field : 'participantName',sortable : true,align : 'center',valign : 'middle'},
			{title : '参加人所在单位',field : 'participantOrganization',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人职务级别',field : 'participantPositionLevel',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人职称',field : 'participantProfessionTitle',sortable : true,align : 'center',valign : 'middle'},
			{title : '参加人研究方向',field : 'participantResearchDirection',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人职务',field : 'participantTitle',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人排序号 ',field : 'participantWorkRank',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '参加人工作时间',field : 'participantWorkingTime',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '人员角色',field : 'role',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '任务分工',field : 'task',sortable : true,align : 'center',valign : 'middle',visible:false},
			{title : '详情',align : 'center',valign : 'middle',
				events: actionEventsrenyuan,
				formatter : function(value, row, index) {
//					var e = '<a href="#" mce_href="#" onclick="getEdit(\''	+ row.uuid + '\')">编辑</a> ';
//					var d = '<a href="#" mce_href="#" onclick="del(\''	+ row.uuid + '\')">删除</a> ';
					var f = '<button class="btn btn-default" id="kejixiangmu_renyuan_showDetail">详情</button> ';
					return f;
				}
			},

		],
//		responseHandler: function(result){  // 成功时执行
//			return {rows:result.content,total:result.totalElements};
//		}, 
	});
});

function addkejiju_xiangmu_renyuanSuccess(result){
	$('#kejiju_xiangmu_xiangmurenyuan_table_datagrid').bootstrapTable('refresh');
}
