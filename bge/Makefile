build:
	docker build . -t jorgemartinezpizarro/bge:SNAPSHOT

push:
	docker push  jorgemartinezpizarro/bge:SNAPSHOT

start:
	docker run --network bitcoinprivacy_bge_network -v /root/bitcoinprivacy/bge/bge.conf:/conf/bge.conf -v /root/bge/bitcoin/:/root/.bitcoin/ -v /root/bge/blockchain/:/root/Bitcoin-Graph-Explorer/blockchain/ -itd --name bitcoinprivacy_bge jorgemartinezpizarro/bge:SNAPSHOT java -Dconfig.file=/conf/bge.conf -jar /root/bge/bge.jar start --force
logs:
	docker exec bitcoinprivacy_bge tail -f /root/bge.log
stop:
	docker kill bitcoinprivacy_bge || true
	docker rm bitcoinprivacy_bge
