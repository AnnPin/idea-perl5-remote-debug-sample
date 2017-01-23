image_name = annpin/docker-perl-debug
container_name = docker-perl-debug
host_port1 = 8080
container_port1 = 80
host_port2 = 18080
container_port2 = 18080
src_path1 = /vagrant/docker-perl-debug/www
dst_path1 = /www

# --------------------------------------------------

setup:		build run
		echo "Completed."
setup-nc:	build-nc run
		echo "Completed."
build:
		docker build -t $(image_name) .
build-nc:
		docker build --no-cache -t $(image_name) .
run:
		docker run -itd \
			-p $(host_port1):$(container_port1) \
			-v $(src_path1):$(dst_path1) \
			--name $(container_name) $(image_name):latest
run-server:
		docker run -itd \
			-p $(host_port1):$(container_port1) \
			-p $(host_port2):$(container_port2) \
			-v $(src_path1):$(dst_path1) \
			--name $(container_name) $(image_name):latest
bash:
		docker exec -it $(container_name) /bin/bash

destroy:	stop rm rmi
		echo "Completed."
clean:		stop rm
		echo "Completed."
start:
		docker start $(container_name)
stop:		
		docker stop $(container_name)
restart:
		docker restart $(container_name)
rm:
		docker rm $(container_name)
rmi:
		docker rmi $(image_name)
logs:
		docker logs $(container_name)
ps:
		docker ps
psa:
		docker ps -a
inspect:
		docker inspect $(image_name)
access:
		docker exec -it $(container_name) /usr/bin/vim /var/log/apache2/access.log
error:
		docker exec -it $(container_name) /usr/bin/vim /var/log/apache2/error.log

