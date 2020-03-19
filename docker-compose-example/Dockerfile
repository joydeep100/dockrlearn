FROM ubuntu

RUN apt-get update

RUN apt-get install redis-tools

CMD  echo "set a 123" | redis-cli -h redisserver;echo "get a" | redis-cli -h redisserver >> /var/output.txt
