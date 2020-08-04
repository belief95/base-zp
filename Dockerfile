###指定java8环境镜像
#FROM jdk:1.8.0_131
FROM openjdk:8u191-jre-alpine3.9
###配置容器启动后执行的命令
ENTRYPOINT ["/usr/bin/java", "-jar", "/app.jar"]
ARG JAR_FILE
###复制文件到容器app-base-admin
ADD ${JAR_FILE} /app.jar
###声明启动端口号
EXPOSE 8088

# dockerfile-maven插件常用的命令
# mvn package
# mvn dockerfile:build
# mvn verify
# mvn dockerfile:push
# mvn deploy


