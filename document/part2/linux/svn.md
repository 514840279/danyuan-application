登录到服务器上，su - root

查看服务器上是否已经安装了软件

    [root@single home]#  rpm -qa subversion
    [root@single home]# 

没有显示任何东西，证明没有安装过软件

下面开始进行安装
新建一个文件夹用于存放软件和代码仓库的

    [root@single home]# mkdir svn
    [root@single home]# ls
    data1  data2  data3  data4  db3  grid  oracle  svn

下载svn软件：http://subversion.apache.org/download/

![方框中选一个下载即可](http://upload-images.jianshu.io/upload_images/2787821-afe2de7ec1ad7423.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

通过sftp上传到linux服务器上 我习惯用xftp软件

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-43cc3f6e4b41d0f6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

通过命令行解压上传的软件包

    [root@single svn]# ls
    subversion-1.8.17.tar.gz  subversion-1.9.5.tar.gz
    [root@single svn]# 

    [root@single svn]# tar -xzvf subversion-1.8.17.tar.gz 
    [root@single svn]# ls
    subversion-1.8.17  subversion-1.8.17.tar.gz  subversion-1.9.5.tar.gz

进入到软件目录

    [root@single svn]# cd subversion-1.8.17
    [root@single subversion-1.8.17]# 

测试安装

    ./configure --prefix=/home/svn  
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-b3a8d78669bd1280.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里提示需要apr,apr-util
查看是否安装了 apr，apr-util

    [root@single subversion-1.8.17]# rpm -qa apr
    [root@single subversion-1.8.17]# rpm -qa apr-util
    [root@single subversion-1.8.17]# 
全部都没有任何提示
那么下载上传解压安装
下载地址： http://apr.apache.org/download.cgi
![圈中的都要下载](http://upload-images.jianshu.io/upload_images/2787821-6a70834b9cf94d27.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

上传到服务器：
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-81363f02b6bf6610.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

解压软件：

    [root@single svn]# ls
    apr-1.5.2.tar.gz       subversion-1.8.17         subversion-1.9.5.tar.gz
    apr-util-1.5.4.tar.gz  subversion-1.8.17.tar.gz
    [root@single svn]# 

    [root@single svn]# tar -xzvf apr-1.5.2.tar.gz
    [root@single svn]# tar -xzvf apr-util-1.5.4.tar.gz 
    [root@single svn]# ls
    apr-1.5.2         apr-util-1.5.4         subversion-1.8.17         subversion-1.9.5.tar.gz
    apr-1.5.2.tar.gz  apr-util-1.5.4.tar.gz  subversion-1.8.17.tar.gz
    [root@single svn]# 

接下来就是编译软件，make安装

    [root@single svn]# cd apr-1.5.2
    [root@single apr-1.5.2]# ./configure --prefix=/home/svn/apr-1.5.2  
    [root@single apr-1.5.2]# make
    [root@single apr-1.5.2]# make test
    [root@single apr-1.5.2]# make install 

    [root@single apr-1.5.2]# cd ../apr-util-1.5.4
    [root@single apr-util-1.5.4]# ./configure --prefix=/home/svn/apr-util-1.5.4

    
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-82ee5fb7a0e22e9a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里需要apr-util 依赖apr

    [root@single apr-util-1.5.4]# ./configure --prefix=/home/svn/apr-util-1.5.4 --with-apr=/home/svn/apr-1.5.2  
    [root@single apr-util-1.5.4]# make
    [root@single apr-util-1.5.4]# make test
    [root@single apr-util-1.5.4]# make install  

再次测试安装

    [root@single apr-util-1.5.4]# cd ../subversion-1.8.17
    [root@single subversion-1.8.17]# ./configure -- prefix=/home/svn/subversion-1.8.17 --with-apr=/home/svn/apr-1.5.2 --with-apr-util=/home/svn/apr-util-1.5.4


![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-2e62ecc06e70999a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这时出现错误需要sqlite安装
我们从这里下载：http://www.sqlite.org/download.html

![这里选择第一个下载即可](http://upload-images.jianshu.io/upload_images/2787821-2f4cd7b546ec6983.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

按照提示sqlite 需要解压到路径：/home/svn/subversion-1.8.17/sqlite-amalgamation
我们上传软件并解压到指定路径下

![上传sqlite](http://upload-images.jianshu.io/upload_images/2787821-df1c3a7f125391da.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

    [root@single subversion-1.8.17]# cd ..
    [root@single svn]# ls
    apr-1.5.2         apr-util-1.5.4.tar.gz                subversion-1.8.17.tar.gz
    apr-1.5.2.tar.gz  sqlite-snapshot-201704181120.tar.gz  subversion-1.9.5.tar.gz
    apr-util-1.5.4    subversion-1.8.17
    [root@single svn]# tar -xzvf sqlite-snapshot-201704181120.tar.gz -C  /home/svn/subversion-1.8.17/
    [root@single svn]#  ls /home/svn/subversion-1.8.17
    aclocal.m4  build-outputs.mk  configure      get-deps.sh  README
    autogen.sh  CHANGES           configure.ac   INSTALL      sqlite-snapshot- 201704181120
    BUGS        COMMITTERS        doc            LICENSE      subversion
    build       config.log        gen-make.opts  Makefile.in  tools
    build.conf  config.nice       gen-make.py    NOTICE       win-tests.py
    [root@single svn]# 
修改成他要的文件名
   
    [root@single svn]# cd subversion-1.8.17
    [root@single subversion-1.8.17]# mv sqlite-snapshot-201704181120/ sqlite-amalgamation/
    [root@single subversion-1.8.17]# ls
    aclocal.m4  build-outputs.mk  configure      get-deps.sh  README
    autogen.sh  CHANGES           configure.ac   INSTALL      sqlite-amalgamation
    BUGS        COMMITTERS        doc            LICENSE      subversion
    build       config.log        gen-make.opts  Makefile.in  tools
    build.conf  config.nice       gen-make.py    NOTICE       win-tests.py
    [root@single subversion-1.8.17]# 

再来测试安装一次
![提示缺少zlib包](http://upload-images.jianshu.io/upload_images/2787821-54282cc0305c1123.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这时看到缺少zlib同样下载上传解压安装
下载地址：http://download.chinaunix.net/download.php?id=40893&ResourceID=12241

     [root@single zlib-1.2.7]# cd ..
     [root@single zlib-1.2.7]# tar -xzvf zlib-1.2.7.tar.gz 
     [root@single zlib-1.2.7]# cd zlib-1.2.7
     [root@single zlib-1.2.7]# ./configure --prefix=/home/svn/zlib-1.2.7
     [root@single zlib-1.2.7]# make
     [root@single zlib-1.2.7]# make test
     [root@single zlib-1.2.7]# make install

再次测试安装

    [root@single subversion-1.8.17]# ./configure --prefix=/home/svn/subversion-1.8.17 --with-apr=/home/svn/apr-1.5.2 --with-apr-util=/home/svn/apr-util-1.5.4  --with-zlib=/home/svn/zlib-1.2.7


![终于没有错误了](http://upload-images.jianshu.io/upload_images/2787821-430dc0e51858c885.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

    [root@single subversion-1.8.17]# make
    [root@single subversion-1.8.17]# make test
    [root@single subversion-1.8.17]# make install

下面测试下安装是否成功
先将路径加入环境变量里

    [root@single ~]# vim .bash_profile 

![添加一行圈中的](http://upload-images.jianshu.io/upload_images/2787821-c6a9fe12567b6313.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
    
    PATH=/home/svn/subversion-1.8.17/bin:$PATH


退出root 重新登录测试

    [root@single ~]# svnserve --version
![版本信息](http://upload-images.jianshu.io/upload_images/2787821-ce8d24272ea5032d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

接下来就是配置权限问题了
1.建立SVN版本库目录，命令如下
    
    [root@single ~]# cd /home/svn/
    [root@single svn]# svnadmin create repo1
    [root@single svn]# ls
    apr-1.5.2                            subversion-1.8.17
    apr-1.5.2.tar.gz                     subversion-1.8.17.tar.gz
    apr-util-1.5.4                       subversion-1.9.5.tar.gz
    apr-util-1.5.4.tar.gz                tigervnc-server-1.7.0-alt2.x86_64.rpm
    repo1                                zlib-1.2.7
    sqlite-snapshot-201704181120.tar.gz  zlib-1.2.7.tar.gz

执行此命令后svn自动创建目录，并在目录下添加必须的配置文件.3. 修改版本库配置文件
在刚建好的目录下conf下有三个配置文件需要配置，分别是
   
    [root@single svn]# cd repo1/
    [root@single repo1]# ls
    conf  db  format  hooks  locks  README.txt
    [root@single repo1]# cd conf
    [root@single conf]# ls
    authz  hooks-env.tmpl  passwd  svnserve.conf
    [root@single conf]# 


首先是
svnserve.conf，注意原文件属性都是前面有#注释掉的，需要删除#
anon-access = none          # 使非授权用户无法访问
auth-access = write           # 使授权用户有写权限
password-db = passwd    # 指明密码文件路径
authz-db = authz                # 访问控制文件

![修改这几处](http://upload-images.jianshu.io/upload_images/2787821-3618911f116e9cae.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

其次，修改passwd文件
输入以下内容：
[users]
username1 = password1
username2 = password2
可以添加多个，此为用户名密码对，如图

    [root@single conf]# vim passwd
![密码文件](http://upload-images.jianshu.io/upload_images/2787821-a5ee4d30d906fa93.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

最后修改authz文件
groups可以将多个用户分到一个组下，通过对组的权限控制，控制其读写操作和对项目库的权限
[groups]
users = user1,user2

    [root@single conf]# vim authz 

![权限控制](http://upload-images.jianshu.io/upload_images/2787821-c63fb48a9dfaf947.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


此配置文件采用“基于路径的授权”策略，中括号里指定路径，以下列出对各用户的授权。包括只读r，读写rw。没有列出的用户，则不允许访问。还可以对用户分组，具体请参考svn手册，以下是简单例子：[/]
@users = rw

7.启动服务执行
   启动服务：
    
    [root@single conf]# svnserve -d --listen-port 3691 -r /home/svn/repo1

, 以deamon方式运行。
本系统采用svnserve方式, 这是小团队项目的推荐方法. 这种方法维护最少, 配置最简单.指令简介：此指令用于启动svn服务，-d指明以守护模式运行，svn自动在3690端口监听。3690是默认端口，可以使用“–listen-port=”或者“–listen-host=”来指定其它端口。-r选项用来指定svn服务的根目录，这样用户就可以使用相对路径访问，而不用提供完整路径。
8.远程连接
现在可以使用安装了svn客户端的电脑远程连接至刚才建立的svn版本库，
地址是svn://SVN服务器的IP地址/


#  `#############################################################################################`
#一定要关防火墙，神坑：

        [root@single svn]# service  iptables stop

![注意关掉防火墙](http://upload-images.jianshu.io/upload_images/2787821-5f9e0967769a7d0d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#  `#############################################################################################`
# 其他命令

    # 查看pid
    [root@single svn]# netstat -ntlp
    #杀死进程
    [root@single svn]# kill -9 31088
    # 查看 端口程序
    [root@single svn]# lsof -i:3690
    # 直接杀死svnserve
    [root@single svn]# killall svnserve
    # 启动svnserve
    [root@single svn]#  svnserve -d -r /home/svn/

`#############################################################################################`
#  新建一个库并添加文件顺序
    [root@single svn]# svnadmin create ZHXXYYPT
    #注意先备份 authz passwd svnserve.conf 到/home/svn 下
    [root@single svn]# cp authz passwd svnserve.conf  ZHXXYYPT/conf/
    cp: overwrite `ZHXXYYPT/conf/authz'? y
    cp: overwrite `ZHXXYYPT/conf/passwd'? y
    cp: overwrite `ZHXXYYPT/conf/svnserve.conf'? y
    [root@single svn]# cd ZHXXYYPT/conf/
    [root@single conf]# vim authz 
    #这里修改下项目名称  [项目名:/]@users=rw
    [root@single conf]# killall svnserve
    [root@single conf]#  svnserve -d -r /home/svn/
