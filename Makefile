export VERSION?=SNAPSHOT
export DATA_FOLDER?=/root/bge
export REPOSITORY=jorgemartinezpizarro

## start
start:
	docker-compose up -d
## stop
stop:
	docker-compose kill
## build bge
build-bge:
	docker build bge -t "${REPOSITORY}/bge:${VERSION}"
	docker push "${REPOSITORY}/bge:${VERSION}"
## build play
build-play:
	docker build play -t "${REPOSITORY}/bitcoinprivacy:${VERSION}"
	docker push "${REPOSITORY}/bitcoinprivacy:${VERSION}"
## build bgeapi
build-bgeapi:
	docker build bgeapi -t  "${REPOSITORY}/bgeapi:${VERSION}"
	docker push "${REPOSITORY}/bgeapi:${VERSION}"
##logs
logs:
	docker-compose logs --tail="all" --follow dummy_startup_blocker
