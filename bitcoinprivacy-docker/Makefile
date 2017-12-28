build:
	docker build . -t jorgemartinezpizarro/bitcoinprivacy:latest

push:
	docker push  jorgemartinezpizarro/bitcoinprivacy:latest

start:
	docker run -p 9000:9000 -itd --name bitcoinprivacy jorgemartinezpizarro/bitcoinprivacy:latest /bin/bash

logs:
	echo "hola"

stop:
	docker kill bitcoinprivacy
	docker rm bitcoinprivacy
