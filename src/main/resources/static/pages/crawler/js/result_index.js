$(function() {
    $("#result-tab").tabs({
   	 data: [{
            id: 'result_roler_model',
            text: '选择模板',
            url: "pages/crawler/result_roler_model.html"
        },{
            id: 'result_db_tables',
            text: '选择数据表',
            url: "pages/crawler/result_db_tables.html"
        },{
            id: 'result_column_config',
            text: '字段映射',
            url: "pages/crawler/result_column_config.html"
        },{
            id: 'result_make_sure',
            text: '确认结果',
            url: "pages/crawler/result_make_sure.html"
        }],
        showIndex: 0,
        loadAll: true
   })
});

