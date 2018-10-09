export VERSION?=SNAPSHOT
export DATA_FOLDER?=/root/data
export REPOSITORY=jorgemartinezpizarro

## start
start:
	docker-compose up -d
## stop
stop:
	docker-compose kill

## clean
clean:
	docker-compose rm

## build
build: build-bge build-play build-bgeapi

## build play
build-play:
	docker build play --no-cache -t "${REPOSITORY}/bitcoinprivacy:${VERSION}"
	docker push "${REPOSITORY}/bitcoinprivacy:${VERSION}"

## build bgeapi
build-bgeapi:
	docker build bgeapi --no-cache -t  "${REPOSITORY}/bgeapi:${VERSION}"
	docker push "${REPOSITORY}/bgeapi:${VERSION}"

## build jdk
build-jdk:
	docker build jdk --no-cache -t  "${REPOSITORY}/jdk:SNAPSHOT"
	docker push "${REPOSITORY}/jdk:SNAPSHOT"

## build jre
build-jre:
	docker build jre --no-cache -t  "${REPOSITORY}/jre:SNAPSHOT"
	docker push "${REPOSITORY}/jre:SNAPSHOT"

##logs
logs:
	docker-compose logs --tail="all" --follow play bge bgeapi bitcoin postgres

## show this help screen
help:
	@printf "Available targets\n\n"
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "%-15s %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)

