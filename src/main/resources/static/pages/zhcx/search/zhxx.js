$(function() {
	tabsName = tabsDesc ==null?tabsName:tabsDesc;
	$("#context_title").text(tabsName+"详细信息");
	var table = $("#context_input_tab");
	var tr = table.find("tr:eq(0)").clone(false);
	var a =0;
	for (var int = 0; int < paramString.length; int++) {
//	    if(paramString[int].pageView){
	    	a ++
	    	var colsName =paramString[int].colsName;
	    	var colsDesc =paramString[int].colsDesc ==""?colsName:paramString[int].colsDesc;
	    	var val = eval('mapString.'+ colsName);
	    	var td = tr.find("td:eq(0)").clone(false);
	    	td.css({"display":""});
	    	td.find(".color_a").text(colsDesc+":");
	    	td.find("#data").text(val==null?"-":val);
	    	tr.append(td)
	    	if(a %2==0){
	    		table.append(tr);
	    		tr = table.find("tr:eq(0)").clone(false);
	    	}
//	    }
    }
	table.append(tr);
});
