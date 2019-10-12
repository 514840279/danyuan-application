;//JavaScript 弱语法的特点,如果前面刚好有个函数没有以";"结尾,那么可能会有语法错误

    /*
     plugin.api_funcs 给对象设置属性,属性值为 自调用匿名函数
     这里涉及到js作用域链以及闭包的知识点
    */    
//定义一些api
var _plugin_api = {
    firstFunc:function(str = _options.default_word){
        alert(str);
        return this; // 返回当前方法
    },
    secondFunc:function(){
        alert("secondFunc");
        return this; // 返回当前方法
    }
}
//这里确定了插件的名称
this.CJPlugin = _plugin_api;