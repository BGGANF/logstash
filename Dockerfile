FROM daocloud.io/java

ADD ./ /home/logstash

#切换目录启动脚本
WORKDIR /home/logstash

EXPOSE 9600

#设置启动后执行的操作
ENTRYPOINT ["/home/logstash/bin/logstash", "-f", "/home/logstash/config/logstash_shipper.conf"]
