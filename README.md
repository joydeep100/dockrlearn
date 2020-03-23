##Docker Image & Container definition
Docker Image is a set of files which has no state, whereas Docker Container is the instantiation of Docker Image. In other words, Docker Container is the run time instance of images.

##Images

- docker images	//List all images

- docker rmi -f <image_name>	//To untag and remove an image

##Process

- docker run <image_name>	//run an instance

- docker run -it <image_name>	//run in interactive mode

- docker run --name <name_for_container>	//give a custom name to a running container or image process

- docker run -it <image_name> <command>	//you can override the default command, i.e. CMD as in Dockerfile

- docker run -d <image_name>	//run detached

- docker run -p <src_host_port>:<container_host_port>	//port mapping

- docker run --rm <image_name>	//will ensure the contaier related files are removed from docker daemon when the process stops, a practical way to see this is 'docker ps -a' with this flag included you can see there will be no trace here once the container is stopped

- docker exec -it <container_id> <command>	//to get access to the running container

ex. ```docker exec -it efe1f0ab1991 bash```

- docker attach <container_id>	//to attach to a detached & running container

##Volumes

- docker run -v <src_node_path>:<container_node_path>	//volume mapping - use absolute and existing paths(in client node)

ex. ```docker run -v $(pwd):/app```
ex. ```docker run -v /app/src``` //it means do not touch this path in the target container


##Build

- docker build .	//Ensure Dockerfile is present, '.' is the context. which means all path in local are relative to this path

- docker build -f <path/to/dockerfile> <path/to/context>
