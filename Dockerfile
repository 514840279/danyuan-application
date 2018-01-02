# 基于哪个镜像
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
