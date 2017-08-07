#!/bin/bash
cd /home/logstash-5.4.0/logs/
nohup  /home/logstash-5.4.0/bin/logstash -f /home/logstash-5.4.0/config/logstash_shipper.conf  &
exit 0
