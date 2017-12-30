build:
	docker build . -t jorgemartinezpizarro/bgeapi:SNAPSHOT

push:
	docker push  jorgemartinezpizarro/bgeapi:SNAPSHOT

start:
	docker run -itd --network bitcoinprivacy_bge_network --name bitcoinprivacy_bgeapi -v /root/bitcoinprivacy/bgeapi/custom.conf:/conf/custom.conf -p 8080:8080 jorgemartinezpizarro/bgeapi:SNAPSHOT java -Dconfig.file=/conf/custom.conf -jar /root/bge/bgeapi.jar
stop:
	docker kill bitcoinprivacy_bgeapi || true
	docker rm bitcoinprivacy_bgeapi
