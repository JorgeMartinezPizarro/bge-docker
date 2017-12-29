build:
	docker build . -t jorgemartinezpizarro/bge:latest

push:
	docker push  jorgemartinezpizarro/bge:latest

start:
	docker run --network bge_network -v /root/bitcoinprivacy/bge/bge.conf:/conf/bge.conf -v /root/bge/bitcoin/:/root/.bitcoin/ -v /root/bge/blockchain/:/root/Bitcoin-Graph-Explorer/blockchain/ -itd --name bitcoinprivacy_bge jorgemartinezpizarro/bge:latest bge start --force  -Dconfig.file=/conf/bge.conf

logs:
	docker exec bge tail -f /root/Bitcoin-Graph-Explorer/bge.log
stop:
	docker kill bitcoinprivacy_bge || true
	docker rm bitcoinprivacy_bge
