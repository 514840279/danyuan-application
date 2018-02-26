$(function() {
	$("#files").fileinput({
		theme: 'fa',
        language: 'zh',
        allowedFileExtensions: ['jpg', 'gif', 'png',"xml","xls","xlsx","pdf"],//接收的文件后缀
//         uploadExtraData:{"username": 1, "fileName":'123.mp3'},
		showPreview: true,
        showUpload: true,
        showPreview :true, //是否显示预览
//         showCaption:false,//是否显示标题
        language: 'zh',
        multiple: true,
        uploadUrl: '/sysFileUploadInfo/upload'
        
      }).on("fileuploaded", function (event, data, previewId, index){
    	  var file = data.files[index];
    	  var param ={
    			 name:file.name,
    			 size:file.size,
    			 type:file.type,
    			 createUser:username,
    			 path:data.response.path
    	  }
    	  var url = "/sysFileUploadInfo/save";
    	  ajaxPost(url, param, successSaveSysFileUploadInfo, 1000, findError);
      });
	
	$('#deleteoldFile').click(function() {
		var data = $('#file_upload_datagrid').bootstrapTable('getAllSelections');
		var url = "/sysFileUploadInfo/deleteAll";
		var param={list:data};
		console.log(param);
		ajaxPost(url, param, deleteSuccess, 5000, findError);
	});


	reset();
});

function reset(){
	// bootstrap table
	$('#file_upload_datagrid').bootstrapTable({
		url : "/sysFileUploadInfo/findAllBySearchText",
		dataType : "json",
		toolbar : '#system_toolbar', // 工具按钮用哪个容器
		cache : true, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
		sortable : true, // 是否启用排序
		sortOrder : "asc", // 排序方式
		pagination : true, // 分页
		pageNumber : 1, // 初始化加载第一页，默认第一页
		pageSize : 10, // 每页的记录行数（*）
		pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
		strictSearch : true,
		showColumns : true, // 是否显示所有的列
		showRefresh : true, // 是否显示刷新按钮
		minimumCountColumns : 2, // 最少允许的列数
		clickToSelect : true, // 是否启用点击选中行
		height : 500, // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		uniqueId : "uuid", // 每一行的唯一标识，一般为主键列
		showToggle : true, // 是否显示详细视图和列表视图的切换按钮
		cardView : false, // 是否显示详细视图
		detailView : false, // 是否显示父子表
		singleSelect : false,
		locales : "zh-CN", // 表格汉化
		search : true, // 显示搜索框
		sidePagination: "server", // 服务端处理分页 server
		//设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",
        contentType: "application/x-www-form-urlencoded",
		method: "post",  //使用get请求到服务器获取数据  
		queryParams: function queryParams(params) {  
		    var param = {  
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize,
             }; 
             return param;
		},
		columns : [ 
			{title : '全选',checkbox : true,align : 'center',valign : 'middle'}, 
//			{title : 'id',field : 'uuid',align : 'center',sortable : true,valign : 'middle'},
			{title : '文件名',field : 'name',sortable : true,align : 'left'}, 
			{title : '大小',field : 'size',align : 'center',sortable : true,valign : 'middle',formatter:function(size){return Math.round(size/1024/1024*100)/100 +"Mb"}},
			{title : '上传',field : 'createUser',align : 'center',sortable : true,valign : 'middle'}, 
			{title : '记录时间',field : 'createTime',align : 'center',sortable : true,valign : 'middle'}, 
			{title : '标记',field : 'deleteFlag',sortable : true,align : 'center'} 
		],
		responseHandler: function(result){  // 成功时执行
			return {rows:result.content,total:result.totalElements};
		},
	});
}
// 窗口大小改变时 重设表头
$(window).resize(function() {
	$('#file_upload_datagrid').bootstrapTable('resetView');
});
function deleteSuccess(result){
	$('#file_upload_datagrid').bootstrapTable('refresh');
}

function successSaveSysFileUploadInfo(result){
	$('#file_upload_datagrid').bootstrapTable('refresh');
}