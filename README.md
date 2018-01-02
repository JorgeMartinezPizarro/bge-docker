Or how to start a bitcoin core full node with an extra awesome bitcoin privacy graph explorer behind:

To start the services individually, use the start target

Folder structure:

	├── bge
	│   ├── bge.conf
	│   ├── Dockerfile
	│   └── logback.xml
	├── bgeapi
	│   ├── bgeapi.conf
	│   ├── Dockerfile
	│   └── logback.xml
	├── play
        │   ├── Dockerfile
        │   ├── logback.xml
        │   └── play.conf
	├── bitcoin
	│   └── bitcoin.conf
	├── jdk
	│   └── Dockerfile
	├── jre
	│   └── Dockerfile
	├── postgres
	│   └── postgres.conf
	└── README.md
	├── Makefile
	├── docker-compose.yml


The bitcoinprivacy docker-compose uses the following docker images:

- https://hub.docker.com/_/postgres/
- https://hub.docker.com/r/ruimarinho/bitcoin-core/
- https://hub.docker.com/r/jorgemartinezpizarro/bge
- https://hub.docker.com/r/jorgemartinezpizarro/bgeapi
- https://hub.docker.com/r/jorgemartinezpizarro/bitcoinprivacy

To start the services it is a required a data folder with the following subfolders:

	 ├── /root/data
	 |   ├── bitcoin/
	 |   ├── blockchain/
	 |   └── psqlpsql/

and to export als environment variable the folder DATA_FOLDER=/root/data:

	export DATA_FOLDER=/root/data

Remember that for docker-machine you have to create the folder inside the docker host

To start the docker-compose project, install git, docker and docker-compose on your machine and run:

	git clone https://github.com/JorgeMartinezPizarro/bge-docker.git
	cd bge-docker
	make start
	
To build new versions of the docker images (all 3 or only 1 of them)

	make build ## build all dockers
	make build-play
	make build-bge
	make build-bgeapi

To view live logs of the current compose use

	make logs

To stop and clean there are available

	make stop
	make clean 

targets.

For configuration options you can change the conf files inside of each component folder. To change the config of bitcoin and postgres look at the links in hub.docker.io for more information.
