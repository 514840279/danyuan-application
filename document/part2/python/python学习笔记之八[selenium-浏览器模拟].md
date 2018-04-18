第一步准备：
需要python安装好selenium：
安装方法 pip install selenium
需要驱动 谷歌：chromedriver +谷歌浏览器
                  IE：  chromedriver + ie浏览器
                   phantomjs （此方法不需要浏览器）

第二步 编码：
使用selenium我主要是为了获得网页源码，当然对网页直接操作是可以的，不过现在我还不需要
获取网页只需四步就可以了

    #1 导入webdriver  因为只需要使用浏览器引擎
    from selenium import webdriver
  
    #2 获取驱动 
    #这里的参数是你的驱动放在什么位置 我的放在 library下面 
    driver = webdriver.PhantomJS("./../library/phantomjs") # PhantomJS 无浏览器
    #driver = webdriver.Chrome("./../library/chromedriver") #调用谷歌浏览器写法
    #driver = webdriver.Ie("./../library/IEDriverServer") # 调用ie浏览器写法

    #3 启动驱动调用浏览器访问网页
    driver.get("http://www.jianshu.com/writer#/notebooks/5763572/notes/14158750/preview")

     #4 获得网页的html
     html_content = driver.page_source

第三步 验证：

执行时 Ie需要设置浏览器：
设置》internet选项》安全》勾掉 启用保护模式
同时最好关掉杀毒软件如：数字软件，某山，。。。

![勾掉 启用保护模式](http://upload-images.jianshu.io/upload_images/2787821-a4c732fd84adbff8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
以下是谷歌/ie 执行时截图

![IE](http://upload-images.jianshu.io/upload_images/2787821-1520787c353a98f7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![谷歌](http://upload-images.jianshu.io/upload_images/2787821-f03dc0f103f86f79.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

可能是我浏览器版本的问题，并没有出现加载后的网页，只出现了驱动默认页面 
等我把 延时调大些看看

![经测试使用智能等待会更好](http://upload-images.jianshu.io/upload_images/2787821-5db552dc2822e515.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![经测试使用智能等待会更好](http://upload-images.jianshu.io/upload_images/2787821-457044b900cad640.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


第四步 考虑：
1.很多时候网页有js执行，网页不能很快渲染完成，所以这时需要让程序等待一会
2.很多的网站只针对一种浏览器开发，导致很多浏览器请求时获取不到数据
3.很多主流的网页使用下拉拖拽式动态的加载网页数据，所以这时給驱动添加个滚屏操作很必要的

    #综上添加在3和4之间 

    js = "var q=document.body.scrollTop=100000"
    self.driver.execute_script(js)
    self.driver.implicitly_wait(30) # 据说此方法是智能等待，看效果还不错，数据加载完就返回了
