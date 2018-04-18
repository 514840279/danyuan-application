一、用户： 

在创建用户时，需要为新建用户指定一用户组，如果不指定其用户所属的工作组，自动会生成一个与用户名同名的工作组。创建用户user1的时候指定其所属工作组users，例：useradd –g users user1 

1、使用命令 useradd 创建用户 
例：useradd user1——创建用户user1 
useradd –e 12/30/2009 user2——创建user2,指定有效期2009-12-30到期 
用户的缺省UID从500向后顺序增加，500以下作为系统保留账号，可以指定UID， 
例：useradd –u 600 user3 

2、使用 passwd 命令为新建用户设置密码 
例：passwd user1 
注意：没有设置密码的用户不能使用。 

3、命令 usermod 修改用户账户 
例：将用户 user1的登录名改为  u1， 
usermod –l u1 user1 
例：将用户 user1 加入到 users组中， 
usermod –g users user1 
例：将用户 user1 目录改为/users/us1 
usermod –d /users/us1 user1 

4、使用命令 userdel 删除用户账户 
例：删除用户user2 
userdel user2 
例：删除用户 user3，同时删除他的工作目录 
userdel –r user3 

5、查看用户信息 
id命令查看一个用户的UID和GID, 例：查看user4的id 
id user4 
finger命令 ——可以查看用户的主目录、启动shell、用户名、地址、电话等信息 
例：finger user4 
[图片上传中...(image.png-3d12e5-1511146779483-0)]

二、用户组： 

6、命令 groupadd创建用户组 
groupadd –g 888 users 
创建一个组users，其GID为888 

7、命令 gpasswd为组添加用户 
只有root和组管理员能够改变组的成员： 
例：把 user1加入users组 
gpasswd –a user1 users 
例：把 user1退出users组 
gpasswd –d user1 users 

8、命令groupmod修改组 
groupmod –n user users 修改组名user为users 

9、groupdel删除组 
groupdel users    删除组users 


三、命令详解：


◆ useradd命令

1. 作用

useradd命令用来建立用户帐号和创建用户的起始目录，使用权限是超级用户。

2. 格式

useradd [－d home] [－s shell] [－c comment] [－m [－k template]] [－f inactive] [－e expire ] [－p passwd] [－r] name

3. 主要参数

－c：加上备注文字，备注文字保存在passwd的备注栏中。　
－d：指定用户登入时的启始目录。
－D：变更预设值。
－e：指定账号的有效期限，缺省表示永久有效。
－f：指定在密码过期后多少天即关闭该账号。
－g：指定用户所属的群组。
－G：指定用户所属的附加群组。
－m：自动建立用户的登入目录。
－M：不要自动建立用户的登入目录。
－n：取消建立以用户名称为名的群组。
－r：建立系统账号。
－s：指定用户登入后所使用的shell。（-s 后面填写此用户登录后使用的shell种类的路径，shell在/bin目录下一般有/bin/sh 、 /bin/bash 、 /bin/ksh 、/bin/tcsh、/bin/zsh ；shell是用户与系统沟通的接口，各种不同的shell只是命令语法有所不同而已。）
－u：指定用户ID号。

4. 说明

useradd可用来建立用户账号，它和adduser命令是相同的。账号建好之后，再用passwd设定账号的密码。使用useradd命令所建立的账号，实际上是保存在/etc/passwd文本文件中。

5. 应用实例

建立一个新用户账户，并设置ID：

＃useradd caojh －u 544

需要说明的是，设定ID值时尽量要大于500，以免冲突。因为Linux安装后会建立一些特殊用户，一般0到499之间的值留给bin、mail这样的系统账号。


◆ groupadd命令

1. 作用

groupadd命令用于将新组加入系统。

2. 格式

groupadd [－g gid] [－o]] [－r] [－f] groupname

3. 主要参数

－g gid：指定组ID号。
－o：允许组ID号，不必惟一。
－r：加入组ID号，低于499系统账号。
－f：加入已经有的组时，发展程序退出。

4. 应用实例

建立一个新组，并设置组ID加入系统：

＃groupadd －g 344 cjh

此时在/etc/passwd文件中产生一个组ID（GID）是344的项目。
