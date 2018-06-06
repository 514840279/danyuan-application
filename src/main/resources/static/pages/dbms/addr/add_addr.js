function submit_add_addr(){
	var param = {
		uuid :$("#add_addr_uuid").val(),
		type : $("#add_addr_type").val(),
		ip : $("#add_addr_ip").val(),
		port : $("#add_addr_port").val(),
		databaseName : $("#add_addr_databaseName").val(),
		username : $("#add_addr_username").val(),
		password : $("#add_addr_password").val(),
		driver : $("#add_addr_driver").val(),
		discription : $("#add_addr_discription").val()
	}
	var url = "/sysDbmsTabsJdbcInfo/save";
	// 重载
	ajaxPost(url, param, sucessAddSysDatabaseInfo, 1000, findError);
}

function sucessAddSysDatabaseInfo(result){
//	$("#tabContainer").data("tabs").remove('add_addr_id');
	successDeleteSysDatabaseInfo();
	$("#add_addr_id").modal('hide')
	// 固定数据库连接的id
//	$("#tabContainer").data("tabs").showTab('4c87fd09-6447-11e7-a272-0025d3a93601');
//	removeByValue(_history,'add_addr_id');
}