function submit_add_addr(){
	var param = {
		uuid :$("#add_addr_uuid").val()==""?getUuid():$("#add_addr_uuid").val(),
		type : $("#add_addr_type").val(),
		address : $("#add_addr_address").val(),
		port : $("#add_addr_port").val(),
		databaseName : $("#add_addr_databaseName").val(),
		username : $("#add_addr_username").val(),
		password : $("#add_addr_password").val(),
		driver : $("#add_addr_driver").val(),
		discription : $("#add_addr_discription").val()
	}
	var url = "/sysDatabaseInfo/addSysDatabaseInfo";
	// 重载
	ajaxPost(url, param, sucessAddSysDatabaseInfo, 1000, findError);
}

function sucessAddSysDatabaseInfo(result){
	$("#tabContainer").data("tabs").remove('add_addr_id');
	successDeleteSysDatabaseInfo();
	$("#tabContainer").data("tabs").showTab(_history[_history.length-2]);
	removeByValue(_history,'add_addr_id');
}