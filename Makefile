SYNCHROS_HOME=/home/syncuser/projects/synchros
BACKUP_DIR=${SYNCHROS_HOME}/backups
DATE=`date +"%Y%m%d"`

help:
	@echo "make up"

up:
	sudo docker-compose -f docker-compose.yml up -d

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

backups: agate-backup mica-backup mongo-backup

prepare-backup:
	rm -rf ${BACKUP_DIR}/${DATE}
	mkdir -p ${BACKUP_DIR}/${DATE}

agate-backup: prepare-backup
	mkdir -p ${BACKUP_DIR}/${DATE}/agate_home
	cp -r ${SYNCHROS_HOME}/agate_home/conf ${BACKUP_DIR}/${DATE}/agate_home/conf
	cp -r ${SYNCHROS_HOME}/agate_home/data ${BACKUP_DIR}/${DATE}/agate_home/data

mica-backup: prepare-backup
	mkdir -p ${BACKUP_DIR}/${DATE}/mica_home
	cp -r ${SYNCHROS_HOME}/mica_home/conf ${BACKUP_DIR}/${DATE}/mica_home/conf
	cp -r ${SYNCHROS_HOME}/mica_home/data ${BACKUP_DIR}/${DATE}/mica_home/data
	cp -r ${SYNCHROS_HOME}/mica_home/plugins ${BACKUP_DIR}/${DATE}/mica_home/plugins

mongo-backup: prepare-backup
	rm -rf /tmp/mongodump && \
	docker run -it --rm --network synchros_default -v /tmp/mongodump:/tmp/dump mongo:4.2 bash -c 'mongodump -v --host mongo:27017 --out=/tmp/dump' && \
	mv /tmp/mongodump ${BACKUP_DIR}/${DATE}/mongo


restore: agate-restore mica-restore mongo-restore

agate-restore:
	cp -r $(backup)/agate_home ${SYNCHROS_HOME}/agate_home

mica_restore:
	cp -r $(backup)/mica_home ${SYNCHROS_HOME}/mica_home

mongo-restore:
	docker run -it --rm --network synchros_default -v $(backup)/mongo:/tmp/dump mongo bash -c 'mongorestore -v --host mongo:27017 /tmp/dump'
