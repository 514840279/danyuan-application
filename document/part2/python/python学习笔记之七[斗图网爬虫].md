知识点：lxml，Xpath语法，bsp，threading
爬取 斗图网的图片 https://www.doutula.com/article/list?page=1

    # coding:utf-8
    import requests
    import threading # 多线程处理与控制
    from lxml import etree # 解析网页
    from bs4 import BeautifulSoup #
    
    # 打开网页 获取源码
    def get_html(url):
       # url='https://www.doutula.com/article/list?page=2'
        headers = {'user-agent':'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36'}
        request = requests.get(url=url,headers=headers)
        response = request.content
        # print response
        return response
    
    # 从主页获取斗图的每一个url 获取源码
    def get_img_html(html):
        soup = BeautifulSoup(html,'lxml') # c创建一个对象
        all_a=soup.find_all('a',class_="list-group-item") # 过滤 下划线 class_ 区分关键字
        for i in all_a:
            img_html = get_html(i['href'])#找到超链接
            # print img_html
            get_img(img_html)
    
    # 获取每个图片
    def get_img(html):
        soup = etree.HTML(html) # 初始化打印源码，自动补全
        items = soup.xpath('//div[@class="artile_des"]') # 解析网页方法 // 选择 ， 【】 条件， @
        for item in items:
            imgurl = item.xpath('table/tbody/tr/td/a/img/@onerror')
            start_save_img(imgurl)
    
    # 下载图片
    def save_img(img_url):
        img_url = img_url.split('=')[-1][1:-2].replace('jp','jpg')
        print u'正在下载'+'http:'+img_url
        img_content = requests.get('http:'+img_url).content
        with open('doutu/%s.jpg'% img_url.split('/')[-1],'wb') as f:
            f.write(img_content)
    
    # 多线程
    def  start_save_img(imgurl_list):
        for i in imgurl_list:
            th = threading.Thread(target=save_img,args=(i,))
            th.start() # 启动线程
    
    # 多页
    def main():
        start_url = 'https://www.doutula.com/article/list?page='
        for i in range(1,50):
            start_html = get_html(start_url.format(i)) # 获取外面的url
            get_img_html(start_html) # 获取内页的url
    
    if __name__ == '__main__': # 判断文件入口
        main()
    
    #main()


知识点总结
># 2017-04-12
python 2 编辑器：pycharm中文
python 库：requests,lxml,bs4(beautifulsoup 4) 自带 threading 多线程处理与控制
安装使用pip install 安装
>
python 开发网站：豆瓣，知乎，谷歌，果壳，YouTube。。。
优点：代码少,开发效率高，拥有大量第三方库
方向：1.web后台开发
    2.自动化运维、测试
    3.大数据 数据分析 挖掘 采集
    4机器学习
    5人工智能
    6科学技术运算
    7 树莓派 发射wifi 机械手臂
    8 云计算。。。
>
课题：多线程爬取斗图网站
>
1.网站禁止爬虫
headers 添加
模拟浏览器
找到 user_agent 方法： f12 ---network---f5---name ---headers---user_agent
>
onerror="this.src='//img.doutula.com/production/uploads/image/2017/04/12/20170412979281_sEfqWn.jpg'"

插件安装记录

    C:\Users\wang>pip list
    You are using pip version 7.0.1, however version 9.0.1 is available.
    You should consider upgrading via the 'pip install --upgrade pip' command.
    lxml (3.7.3)
    pip (7.0.1)
    setuptools (16.0)
    
    C:\Users\wang>pip install beautifulsoup
    You are using pip version 7.0.1, however version 9.0.1 is available.
    You should consider upgrading via the 'pip install --upgrade pip' command.
    Collecting beautifulsoup
      Downloading BeautifulSoup-3.2.1.tar.gz
    Installing collected packages: beautifulsoup
      Running setup.py install for beautifulsoup
    Successfully installed beautifulsoup-3.2.1
    
    C:\Users\wang>pip install beautifulsoup4
    You are using pip version 7.0.1, however version 9.0.1 is available.
    You should consider upgrading via the 'pip install --upgrade pip' command.
    Collecting beautifulsoup4
      Downloading beautifulsoup4-4.5.3-py2-none-any.whl (85kB)
        38% |████████████▎                   | 32kB 8.5kB/s eta 0:00:0
        43% |█████████████▉                  | 36kB 9.5kB/s eta 0:00:
        48% |███████████████▍                | 40kB 10kB/s eta 0:00
        52% |█████████████████               | 45kB 10kB/s eta 0:0
        57% |██████████████████▌             | 49kB 11kB/s eta 0
        62% |████████████████████            | 53kB 11kB/s eta
        67% |█████████████████████▌          | 57kB 11kB/s et
        72% |███████████████████████         | 61kB 12kB/s e
        76% |████████████████████████▋       | 65kB 12kB/s
        81% |██████████████████████████▏     | 69kB 12kB
        86% |███████████████████████████▊    | 73kB 22k
        91% |█████████████████████████████▎  | 77kB 2
        96% |██████████████████████████████▉ | 81kB
        100% |████████████████████████████████| 86k
     20kB/s
    Installing collected packages: beautifulsoup4
    Successfully installed beautifulsoup4-4.5.3
    
    C:\Users\wang>pip install requests
    You are using pip version 7.0.1, however version 9.0.1 is available.
    You should consider upgrading via the 'pip install --upgrade pip' command.
    Collecting requests
      Using cached requests-2.13.0-py2.py3-none-any.whl
    Installing collected packages: requests
    Successfully installed requests-2.13.0
    
    C:\Users\wang>pip list
    You are using pip version 7.0.1, however version 9.0.1 is available.
    You should consider upgrading via the 'pip install --upgrade pip' command.
    BeautifulSoup (3.2.1)
    beautifulsoup4 (4.5.3)
    lxml (3.7.3)
    pip (7.0.1)
    requests (2.13.0)
    setuptools (16.0)
    
    C:\Users\wang>
