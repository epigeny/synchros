help:
	@echo "make up"

up:
	sudo docker-compose -f docker-compose.yml up -d

down:
	sudo docker-compose -f docker-compose.yml down

mica-bash:
	sudo docker exec -i -t synchros_mica_1 /bin/bash

build:
	sudo docker-compose -f docker-compose.yml build --no-cache
