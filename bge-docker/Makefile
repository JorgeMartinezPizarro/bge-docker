build:
	docker build . -t jorgemartinezpizarro/bge:latest

push:
	docker push  jorgemartinezpizarro/bge:latest

start:
	docker run -v /root/bge/bitcoin/:/root/.bitcoin/ -v /root/bge/blockchain/:/root/Bitcoin-Graph-Explorer/blockchain/ -itd --name bge jorgemartinezpizarro/bge:latest /bin/bash

logs:
	docker exec bge tail -f /root/Bitcoin-Graph-Explorer/bge.log
stop:
	docker kill bge
	docker rm bge
