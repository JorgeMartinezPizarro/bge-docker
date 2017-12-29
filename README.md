BGE: docker run --network=bge_network -v /root/bge/bitcoin:/root/.bitcoin -v /root/bge/blockchain/:/root/Bitcoin-Graph-Explorer/blockchain/ -p 8333:8333 -p 8080:8080 -itd --name bge ae3c /bin/bash

PSQL: docker run --network=bge_network -v /root/bge/psql:/var/lib/postgresql/data -p 5432:5432 -itd --name bitcoinprivacy_postgres -e POSTGRES_PASSWORD=trivial -e POSTGRES_USER=root -e POSTGRES_DB=postgres postgres:10.1 /bin/bash

BITCOIN: docker run --network=bge_network -v /root/bge/bitcoin:/home/bitcoin/.bitcoin --name bitcoin-server -itd ruimarinho/bitcoin-core   -printtoconsole   [-testnet=1 -regtest=1]

API: docker run -itd --name bgeapi -p 8080:8080 jorgemartinezpizarro/bgeapi:latest /bin/bash 

PLAY: docker run -p 9000:9000 -itd --name bitcoinprivacy jorgemartinezpizarro/bitcoinprivacy:latest /bin/bash

Replace the make start commands with a docker-compose.yml. 

Add a network: set custom IPS

Externalize configuration for bge bgeapi and play dockers, ports should be overriden with ENV variables, the same as the network defines.

Adapt build and push targets.

Add data folder specification according to the volumes.

Folders structure:

	README.md
	docker-compose.yml
	play/
		Dockerfile
		play.conf
	bge/
		Dockerfile
		bge.conf
	bgeapi/
		Dockerfile
		bge.conf
	bitcoin/
		bitcoin.conf
	postgres/
		postgres.conf

Convert it to a git repository.

Add to README.md: 
	usage ```docker-compose up```
