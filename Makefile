help:
	@echo "make up"

up:
	sudo docker-compose -f docker-compose.yml up -d

down:
	sudo docker-compose -f docker-compose.yml down

stop:
	sudo docker-compose -f docker-compose.yml stop

start:
	sudo docker-compose -f docker-compose.yml start

restart:
	sudo docker-compose -f docker-compose.yml restart

pull:
	sudo docker-compose -f docker-compose.yml pull

mica-bash:
	sudo docker exec -i -t synchros_mica_1 /bin/bash

build:
	sudo docker-compose -f docker-compose.yml build --no-cache

reset-taxo:
	mica rest -u $(username) -p $(password) -mk https://repository.synchros.eu/ -m DELETE /config/$(target)/taxonomy
	mica rest -u $(username) -p $(password) -mk https://repository.synchros.eu/ -m PUT /taxonomies/_index

countries:
	mica rest -u $(username) -p $(password) -mk https://repository.synchros.eu/  -m GET "/studies/_rql?query=locale(en),network(limit(0,20),sort(acronym)),study(in(Mica_study.className,Study),aggregate(Mica_study.populations-selectionCriteria-countriesIso)),facet()" -j
