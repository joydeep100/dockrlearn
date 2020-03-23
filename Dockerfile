#Base image
FROM ubuntu	

#Install dependencies
RUN apt-get update
RUN apt-get install redis-tools net-tools telnet redis-server -y

#Command which executes when constainer is ran
CMD ["redis-server"]

#Other commands
# ADD , COPY, WORKDIR, ENV, EXPOSE, VOLUME, ENTRYPOINT

#notes
#EXPOSE 8080	// this wont do anything in docker as such, but in AWS this is actually used to expose ports


