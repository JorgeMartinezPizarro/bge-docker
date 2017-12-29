build:
	docker build . -t jorgemartinezpizarro/bgeapi:latest

push:
	docker push  jorgemartinezpizarro/bgeapi:latest

start:
	docker run -itd --network bge_network --name bitcoinprivacy_bgeapi -v /root/bitcoinprivacy/bgeapi/custom.conf:/conf/custom.conf -p 8080:8080 jorgemartinezpizarro/bgeapi:latest bgeapi -Dconfig.file=/conf/custom.conf
stop:
	docker kill bitcoinprivacy_bgeapi || true
	docker rm bitcoinprivacy_bgeapi
