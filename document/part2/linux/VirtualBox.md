## 准备
#### 1 下载virtualBox  打开百度搜索 并下载就行

![virtualBox](http://upload-images.jianshu.io/upload_images/2787821-eadad705ca60b44c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 2 下载系统文件 百度搜索 centos7

![搜索系统](http://upload-images.jianshu.io/upload_images/2787821-76be4835ad959bc4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

我选择 everything版本 当然也可以下载dvd版本
![image.png](http://upload-images.jianshu.io/upload_images/2787821-55204e44e0271149.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

从所有的连接中选择一个下载就行，如果感觉下载慢，就换一个连接试试，建议选择最近的
![点击下载吧](http://upload-images.jianshu.io/upload_images/2787821-785b98e0dc26cb11.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

两个文件下载后就可以安装了

## 开始安装
#### 1 virtualBox 安装
为什么选择virtual？
因为virtual小，因为virtual免注册，安装方法很简单，无脑下一步就行拉。

#### 2 系统安装

######  虚拟机系统环境设置
1. 新建
![1.png](http://upload-images.jianshu.io/upload_images/2787821-d91a65f2aacc8dcb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

2. 随便写名称，类型选linux 版本选红帽
![2.png](http://upload-images.jianshu.io/upload_images/2787821-6066d8537b9c6024.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

3. 调整虚拟机内存，适当调整，不要想着调个128GB，因为那是不可能的，因为虚拟机的内存是吃你真机的内存的，所以 也不要都分配给虚拟机，不然你启动虚拟机后，真机就真的什么也干不了了。默认或者按照建议的绿色部分就可以啦。
![3.png](http://upload-images.jianshu.io/upload_images/2787821-9fa6ebd6b47ed13c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

4. 添加硬盘
![4.png](http://upload-images.jianshu.io/upload_images/2787821-6432386d5b2fbc57.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里随便选一种
![5.png](http://upload-images.jianshu.io/upload_images/2787821-8bf07a9d571b2736.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

动态分配的好处是虚拟磁盘会逐步增长到你设置的大小，然后不在增长，固定大小好处在于以后使用起来更顺畅，个人感觉并不影响。
![6.png](http://upload-images.jianshu.io/upload_images/2787821-c20fdae28c33590c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

給虚拟硬盘选个保存数据的位置并调整最大文件大小。
![7.png](http://upload-images.jianshu.io/upload_images/2787821-81de8b6bc4663b38.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###### 系统安装 这一步与真机安装是一样的了
1 . 启动系统
![8.png](http://upload-images.jianshu.io/upload_images/2787821-c95cb531f40a51d5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

2. 选择你下载的系统镜像的保存路径。
![9.png](http://upload-images.jianshu.io/upload_images/2787821-d3f1e1a4e035ca86.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

3. 进入安装选项。这里有两个选项，第二个选项 他先进行环境测试然后再安装，会多花点时间，这里直接选第一个安装就行。
![10.png](http://upload-images.jianshu.io/upload_images/2787821-f3a1c890bdf9011a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

4. 这里选择的是你在安装系统时的界面显示语言，不是系统使用语言。
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-41e68d07a21ca092.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

5. 选择系统安装那些软件
![11.png](http://upload-images.jianshu.io/upload_images/2787821-c9baa4d12edd41e8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里根据需要进行选择。我是为了方便以后所以都选择安装了。当然也可以以后修改。或者手动添加，方法很多种。
![12.png](http://upload-images.jianshu.io/upload_images/2787821-daf70302783168bd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里我都选择完后
![13.png](http://upload-images.jianshu.io/upload_images/2787821-8d6678232b4aead6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

6. 选择安装位置。就是系统安装到哪里
![14.png](http://upload-images.jianshu.io/upload_images/2787821-0f77725101bda8ef.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

由于并没有分区和多块硬盘，所以只有一个位置
![15.png](http://upload-images.jianshu.io/upload_images/2787821-80c3831026dd661d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

7 选择网络 当然也可以以后修改
![16.png](http://upload-images.jianshu.io/upload_images/2787821-7d29a22b83f1ef35.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

设置好网络
![17.png](http://upload-images.jianshu.io/upload_images/2787821-712e68bc9671a583.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

8. 下一步安装
![18.png](http://upload-images.jianshu.io/upload_images/2787821-50ca8550b73f7b3a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

9. 设置管理员密码 
![19.png](http://upload-images.jianshu.io/upload_images/2787821-26323f0cfaf18c8c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

填写管理员密码
![20.png](http://upload-images.jianshu.io/upload_images/2787821-9354a3bd38bdfe3c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

等待完成安装，由于我全选了软件所以时间较长
![21.png](http://upload-images.jianshu.io/upload_images/2787821-e7ce1f27ee1b88da.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

重启完成系统安装，
![22.png](http://upload-images.jianshu.io/upload_images/2787821-d912ac0053c178e8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

进入系统
![23.png](http://upload-images.jianshu.io/upload_images/2787821-9a2fe1aad7ce1df5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

添加许可信息
![24.png](http://upload-images.jianshu.io/upload_images/2787821-1b354733c2312a4e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

同意添加完成
![25.png](http://upload-images.jianshu.io/upload_images/2787821-b42731c147899971.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


下一步
![26.png](http://upload-images.jianshu.io/upload_images/2787821-c65e6463ef145552.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

选择系统语言
![27.png](http://upload-images.jianshu.io/upload_images/2787821-dc712e0abef2eeff.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

选择输入法
![28.png](http://upload-images.jianshu.io/upload_images/2787821-0670cbbe04971e6b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这时创建的是一般身份账户也是你使用登录系统的账户
![29.png](http://upload-images.jianshu.io/upload_images/2787821-337d4e10eef05c35.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

选择时区
![30.png](http://upload-images.jianshu.io/upload_images/2787821-72e184c0cb310cf2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这个连接就不需要了直接过
![31.png](http://upload-images.jianshu.io/upload_images/2787821-5d31879e59d48f23.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

完成系统安装
![32.png](http://upload-images.jianshu.io/upload_images/2787821-30dff2f95bf5f59d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

修改下网卡
![33.png](http://upload-images.jianshu.io/upload_images/2787821-6dab55fbc4ec73e9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

系统启动效果
![34.png](http://upload-images.jianshu.io/upload_images/2787821-fe1ac635790c6ad9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

登录界面
![35.png](http://upload-images.jianshu.io/upload_images/2787821-50307fe3c7db98fe.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![36.png](http://upload-images.jianshu.io/upload_images/2787821-e0783af28effe201.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

##　连接文件上传
ssh 连接的工具用很多可选用，我习惯用xshell，百度下载


![xshell](http://upload-images.jianshu.io/upload_images/2787821-452a426129d5c2a7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

下载后安装 选择个人免费版本安装然后启动输入虚拟机的ip 用户密码 就能远程操作linux，

![输入连接的地址](http://upload-images.jianshu.io/upload_images/2787821-2876a35078d13aee.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

然而有时候需要用到桌面版本，远程的朋友xshell 并不能满足需要，这时需要个工具  vnc 
对于本机使用的朋友就不必看下面的了
百度下载客户端就行，
由于linux 已经安装好了vncserver 我们直接在命令行中输入 命令 “vncserver” 这样就启动服务端了，第一次需要输入密码 最低6位 直接输入 123456 需要输入两遍，注意输入密码时是看不见的，说以直接输入然后敲击回车确认就可以，vnc 默认第一个服务端口是 5901 第二个是 5902 以此类推，服务端设置完，开始安装客户端
vnc 客户端 我用的是windows的所以还是百度出来

![vnc](http://upload-images.jianshu.io/upload_images/2787821-edbf4ff613ff6d92.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![选一个下载](http://upload-images.jianshu.io/upload_images/2787821-85279f967f428513.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
安装过程很简单，以下就完成了
输入ip：端口号 密码是123456
就可以接入桌面了

这里注意想要接入桌面前提linux系统要有桌面程序才行
