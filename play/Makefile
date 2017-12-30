build:
	docker build . -t jorgemartinezpizarro/bitcoinprivacy:SNAPSHOT
push:
	docker push  jorgemartinezpizarro/bitcoinprivacy:SNAPSHOT
start:
	docker run -p 9000:9000 -itd -v /root/bitcoinprivacy/play/custom.conf:/conf/custom.conf --network=bitcoinprivacy_bge_network --name bitcoinprivacy_play jorgemartinezpizarro/bitcoinprivacy:SNAPSHOT /root/play-bitcoinprivacy/bin/play-bitcoinprivacy -Dconfig.file=/conf/custom.conf
stop:
	docker kill bitcoinprivacy_play || true
	docker rm bitcoinprivacy_play
