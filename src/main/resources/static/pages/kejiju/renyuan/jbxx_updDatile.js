$(function() {
    $("#renyuan_tab").tabs({
   	 	data: [{
            id: 'kejiju_renyuan_gongzuolvli',
            text: '工作履历',
            url: "pages/kejiju/renyuan/kejiju_renyuan_gongzuolvli.html"
        },{
            id: 'kejiju_renyuan_jiaoyuxinxi',
            text: '教育信息',
            url: "pages/kejiju/renyuan/kejiju_renyuan_jiaoyuxinxi.html"
        },{
            id: 'kejiju_renyuan_xueshujianzhi',
            text: '学术兼职',
            url: "pages/kejiju/renyuan/kejiju_renyuan_xueshujianzhi.html"
        },{
            id: 'kejiju_renyuan_xueshupingshen',
            text: '学术评审',
            url: "pages/kejiju/renyuan/kejiju_renyuan_xueshupingshen.html"
        }],
        showIndex: 0,
        loadAll: true
   });
    $("#renyuan_tab").find('#myTab').attr('id','myTab4');
});