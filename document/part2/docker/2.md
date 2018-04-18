 -- 1 使用镜像启动容器，比如sameersbn/redis:latest 它先从本机查找有没有，如果不存在，就去官方 Docker Hub仓库查找，下载到本机然后创建
docker run --name gitlab-redis -d sameersbn/redis:latest
--新容器创建后不依赖镜像就可以运行，可以手工删掉，默认是不会删除的，以为该镜像还可能用于创建其他容器


-a 查看本机上所有镜像
docker images -a

--  查看分多少层 history
docker  history sameersbn/redis


--2 镜像维护 Dockerfile
vim Dockerfile
```
#基于哪个镜像
FROM java:8
# 将本地文件夹挂载到当前容器
VOLUME /tmp
# 复制文件到容器
ADD target/danyuan.jar app.jar
# 
RUN bash -c 'touch /app.jar'
# 声明需要暴露的端口，
# EXPOSE 80
# 配置容器启动执行的命令
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
```
--创建
docker build 




--查看 
docker images

docker run --name danyuan-mysql --env MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mariadb 
docker run --name danyuan-application --link danyuan-mysql:mysql -d danyuan:0.0.1




-- 4 订制私有基础镜像
