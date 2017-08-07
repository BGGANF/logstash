docker rm -f logstash
docker run --restart=always --name=logstash -p 9600:9600 -v /home/logstash1/config:/home/logstash/config -v /home/logstash1/logs:/home/logstash/logs -v /home/docker/log/nginx:/home/docker/log/nginx -ti -d 127.0.0.1:5000/logstash
