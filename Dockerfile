#基础镜像maven
FROM daocloud.io/java
#镜像创建者信息
MAINTAINER moses
#复制项目代码
ADD ./ /home/logstash
#切换目录启动脚本
WORKDIR /home/logstash
#公布tomcat的8080端口
EXPOSE 9600
#设置启动后执行的操作
ENTRYPOINT ["/home/logstash/bin/logstash", "-f", "/home/logstash/config/logstash_shipper.conf"]
