var _table =null;

window.onload = function () {
	
    // 获取节点
    var menu = document.getElementById('context-menu');

    //获取可视区宽度,高度
    var winWidth = document.documentElement.clientWidth || document.body.clientWidth;
    var winHeight = document.documentElement.clientHeight || document.body.clientHeight;

    // 点击空白区域 隐藏菜单
    document.addEventListener('click', function () {
      menu.style.display = 'none';
      menu.style.left = 0 + 'px';
      menu.style.top = 0 + 'px';
    })

    // 点击菜单
    menu.addEventListener('click', function (e) {
      var e = e || window.event;
      console.log(e.target.innerText)
    })

    //右键菜单
    document.oncontextmenu = function (e) {
    	e.preventDefault();
      var e = e || window.event;
      menu.style.display = 'block';
      // 获取鼠标坐标
      var mouseX = e.clientX;
      var mouseY = e.clientY;

      // 判断边界值，防止菜单栏溢出可视窗口
      if (mouseX >= (winWidth - menu.offsetWidth)) {
        mouseX = winWidth - menu.offsetWidth;
      } else {
        mouseX = mouseX
      }
      if (mouseY > winHeight - menu.offsetHeight) {
        mouseY = winHeight - menu.offsetHeight;
      } else {
        mouseY = mouseY;
      }
      menu.style.left = mouseX + 'px';
      menu.style.top = mouseY + 'px';
      return false;
    }
  };

$(function() {
	// search bar 数据
//	var url = '/zhcx/findAllType';
	var url = '/zhcx/findAllTypeByUser';
	ajaxPost(url, {"username":username}, findAllType_Sucess, 1000, findError);
	
});


// 分类别添加
function findAllType_Sucess(result){
	$.each(result,function(index,value){
		var typeUuid=value.uuid;
		var type = $("#mainDiv").find("#show_type_id:eq(0)").clone();
		type.find("#type_text_id").text(value.typeName);
		
		// 调用表名查询
//		var url_table = '/zhcx/findAllTableByTypeUuid';
		var url_table = '/zhcx/findAllTableByTypeUuidAndUsername';
		var param_table ={
			info:{	
				typeUuid:typeUuid
			},
			"username":username
		};
		
		jQuery.ajax({
			type : 'POST',
			url : url_table,
			dataType : 'json',
			cache : false,
			contentType : 'application/json',
			data : JSON.stringify(param_table),
			success : function(result) {
				var table_parrent = type.find("#show_table_id");
				$.each(result,function(index,value){
					var table = table_parrent.find("div:eq(0)").clone();
					var tabsUuid = value.uuid;
					var tabsRows = value.tabsRows==null?0:value.tabsRows;
					
					var viewTable = value.tabsDesc==null||value.tabsDesc==""?value.tabsName:value.tabsDesc;
					table.text(viewTable);
					if(tabsRows==0){
						table.css({"color":"red"});
						table.text(viewTable+"(确认是否空表)");
					}
					table.attr({"tabsUuid":tabsUuid})
					table.attr({"tabsRows":tabsRows})
					table.css({"display":""})
					table_parrent.append(table);
					table.bind('click',function(){
						jQuery("#tabsuuid").val(tabsUuid);
						jQuery("#jdbcUuid").val(value.jdbcUuid);
						jQuery("#tabsName").val(value.tabsName);
						jQuery("#tabsDesc").val(value.tabsDesc);
						jQuery("#tabsRows").val(tabsRows);
						jQuery("#dbType").val(value.dbType);
//						jQuery("#esName").val(value.esName);
						jQuery("#zhcx_type").val("单表多条件查询");
						jQuery("#zhlbform").attr("action",  "/zhcx/forwardZhlb");
						jQuery("#zhlbform").submit();
					})
					
					table.contextMenu('myMenu1', {
						bindings : {
							'edit' : function(t) {
								_table = table;
								var tabsuuid=$(t).attr("tabsuuid");
								var url="/sysDbmsTabsInfo/findAllBySysTableInfo";
								var param={"uuid":tabsuuid};
								ajaxPost(url,param,successLoadTableParam);
							}
						}
					});

					type.css({"display":""});
				});
			}
		});
		$("#main_section").append(type);
	})
	
	
}


function successLoadTableParam(result){
	var uuid =result[0].uuid;
	// 获取屏幕宽度
	url = "/sysDbmsTabsInfo/updBeforEdit?uuid="+uuid;
	
	modals.openWin({
    	winId:"upd_tabs_id",
    	title:'添加连接信息',
    	width:screen.width*0.5 +'px',
    	url:url
    });

}