安装

官网下载windows的install文件安装

使用
mysql测试

>\# coding=utf-8
import mysql.connector
\# 注意把password设为你的root口令:
conn = mysql.connector.connect(user='root', password='root', database='test')
cursor = conn.cursor()
\# 创建user表:
cursor.execute('create table user (id varchar(20) primary key, name varchar(20))')
\# 插入一行记录，注意MySQL的占位符是%s:
cursor.execute('insert into user (id, name) values (%s, %s)', ['1', 'Michael'])
\# 提交事务:
conn.commit()
cursor.close()
\# 运行查询:
cursor = conn.cursor()
cursor.execute('select * from user where id = %s', ['1'])
values = cursor.fetchall()
\# 关闭Cursor和Connection:
cursor.close()
conn.close()

错误出现

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-4d0c56ac9e3dcb37.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
经查询是没有安装mysql包

原来已经不用mysqldb了
下载安装mysql包
#  
    python -m pip install PyMySQL

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-b612ee3cb78e9e81.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


安装
# 
    easy_install.exe pymysql3

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-f289a8bbd9fa63bb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


最终版本
# 
        # coding=utf-8
		import pymysql
		conn = pymysql.connect(user='root', passwd='root',host='localhost', db='test')
		# conn = pymysql.connector.connect(user='root', password='root', database='test')
		cursor = conn.cursor()
		# 创建user表:
		cursor.execute('create table user (id varchar(20) primary key, name varchar(20))')
		# 插入一行记录，注意MySQL的占位符是%s
		cursor.execute('insert into user (id, name) values (%s, %s)', ['1', 'Michael'])
		
		# 提交事务:
		conn.commit()
		cursor.close()
		# 运行查询:
		cursor = conn.cursor()
		cursor.execute('select * from user where id = %s', ['1'])
		values = cursor.fetchall()
		# 关闭Cursor和Connection:
		cursor.close()
		conn.close()

执行
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-0312aab81caa3219.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

并没有什么效果 
看下数据库

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-6c49cfda06e9fd2a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-94829c371d7bb2c2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
