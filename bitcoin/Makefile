start:
	docker run --network=bge_network -v /root/bge/bitcoin:/home/bitcoin/.bitcoin --name bitcoinprivacy_bitcoin -itd ruimarinho/bitcoin-core   -printtoconsole   [-testnet=1 -regtest=1]
stop:
	docker kill bitcoinprivacy_bitcoin || true
	docker rm bitcoinprivacy_bitcoin
