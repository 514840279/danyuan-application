$(function() {
    $("#xiangmu_tab").tabs({
   	 	data: [{
            id: 'kejiju_xiangmu_danweixinxi',
            text: '单位信息',
            url: "pages/kejiju/xiangmu/kejiju_xiangmu_danweixinxi.html"
        },{
            id: 'kejiju_xiangmu_xiangmurenyuan',
            text: '项目人员',
            url: "pages/kejiju/xiangmu/kejiju_xiangmu_xiangmurenyuan.html"
        }],
        showIndex: 0,
        loadAll: true
   });
    $("#xiangmu_tab").find('#myTab').attr('id','myTab2');
});