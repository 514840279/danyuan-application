大量的互联网应用服务包括多个服务组件，这往往需要多个容器之间通过网络通信进行相互配合。
    Docker目前提供了映射容器端口到宿主主机和容器互联机制来为容器提供网络服务
    本章讲解如何使用docker的网络功能。包括使用端口映射机制来将容器内应用服务提供给外部网络，以及通过容器互联系统让多个容器之间进行快捷的网络通信。

#####1. 从外部访问容器应用
   在启动容器的时候，如果不指定对应参数，在容器外部无法通过网络访问容器内的应用。需要通过 -p 参数来指定端口映射。当使用 -p 标记时，docker 会随机映射一个49000~49900 的端口到外部开放的网络端口。
```
docker run -d -P training/webapp python app.py
docker ps -l
``` 
-p(小写)这可以指定要映射的端口，并且在指定端口上可以绑定一个容器。格式
```
ip:hostPort:containerPort
ip::containerPort
hostport:containerPort
```
##### 映射所有接口地址
使用hostPort:containerPort 格式将本地的5000端口映射到容器的5000端口
```
docker run -d -p 5000:5000 training/webapp python app.py
```
此时默认会绑定本地所有接口上的所有地址。多次使用-p 可以绑定多个端口。
```
docker run -d -p 5000:5000 -p 3000:80 training/webapp python app.py
```
#####映射到指定地址的指定端口
可以使用 ip:hostPort:containerPort格式指定映射使用一个特定地址，比如localhost 地址127.0.0.1:
```
docker run -d -p 127.0.0.1:5000:5000 training/webapp python app.py
```
#####映射指定地址的任意端口
使用ip::containerPort板顶localhost的任意端口到容器的5000端口，本地主机会自动分配一个端口。
```
docker run -d -p 127.0.0.1::5000 training/webapp python app.py
```
还可以使用udp来指定udp端口：
```
docker run -d -p 127.0.0.1:5000:5000/udp training/webapp python app.py
```
#####查看银色端口配置
使用docker port 来查看当前映射的端口配置。也可以查看到绑定的地址：
```
docker port nostalgic_morse 5000
```
##### 2. 容器互联实现容器间通信
 容器的连接（linking）系统是除了端口映射外领一种可以与容器中应用进行交互的方式。它会在源和接受容器之间创建一个隧道，接收容器可以看到源容器指定的信息。
######自定义容器命名
连接系统一句容器的名称来执行。因此。首要自顶一个好几的容器命名。
虽然当创建容器的时候，系统默认会分配一个名字，但自定义容器有两个好处：1.好记，2作为有用的参考点。
```
docker run -d -P --name web training/webapp python app.py
```
使用docker ps 来验证设定的命名：
```
docker ps -l
```
也可以使用docker  inspect 来查看容器的名字：
```
docker inspect -f "{{.Name}}" aed84ee21bde
```
在执行docker run 的时候如果添加--rm标记，则容器在终止后会立即删除，注意 --rm 和-d 参数不能同时使用。
######容器互联
使用 --link 参数可以让容器之间安全的进行交互。
下面先创建一个新的数据库容器；
```
docker run -d --name db training/postgres
```
删除之前的web容器：
```
docker rm -f web
```
然后创建一个新的web容器，并将它连接到db容器
```
docker run -d -P --name web --link db:db training/webapp python app.py
```
此时，db 容器和web容器建立互联关系。
--link 参数的格式: --link name:alias，其中name是要连接的容器的名称，alias 是这个链接的别名。
使用 docker ps 查看容器的连接
```
docker ps
```


本章信息摘自《Docker技术入门与实战》


