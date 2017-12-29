build:
	docker build . -t jorgemartinezpizarro/bitcoinprivacy:latest
push:
	docker push  jorgemartinezpizarro/bitcoinprivacy:latest
start:
	docker run -p 9000:9000 -itd -v /root/bitcoinprivacy/play/custom.conf:/conf/custom.conf --network=bge_network --name bitcoinprivacy_play jorgemartinezpizarro/bitcoinprivacy:latest /root/play-bitcoinprivacy/target/universal/stage/bin/play-bitcoinprivacy -Dconfig.file=/conf/custom.conf
stop:
	docker kill bitcoinprivacy_play
	docker rm bitcoinprivacy_play
