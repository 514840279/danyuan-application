window.alert = function(txt) {
	var alertFram = document.createElement("DIV");
	strHtml = " <div class=\"modal fade  bs-example-modal-lg\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">";
	strHtml += "	<div class=\"modal-dialog\">";
	strHtml += "		<div class=\"modal-content\">";
	strHtml += "			<div class=\"modal-header\">";
	strHtml += "				<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">";
	strHtml += "		&times;";
	strHtml += "	</button>";
	strHtml += "	<h4 class=\"modal-title\" id=\"myModalLabel\">";
	strHtml += "		系统消息";
	strHtml += "	</h4>";
	strHtml += "	</div>";
	strHtml += "		<div class=\"modal-body\">";
	strHtml += txt;
	strHtml += "		</div>";
	strHtml += "		<div class=\"modal-footer\">";
	strHtml += "					<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">关闭</button>";
	strHtml += "		</div>";
	strHtml += "	</div>";
	strHtml += " </div>";
	
	var fatherBody = $(window.document.body);
	fatherBody.append(strHtml);
	fatherBody.find('#myModal').modal('show');
	
	fatherBody.find('#myModal').click(function(){
		fatherBody.find('#myModal').remove();
		fatherBody.find('.modal-backdrop').remove();
	});
}
