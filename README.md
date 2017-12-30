To start the services individually:

Folder structure:

	├── bge
	│   ├── bge.conf
	│   └── Dockerfile
	├── bgeapi
	│   ├── custom.conf
	│   └── Dockerfile
	├── docker-compose.yml
	├── play
	│   ├── custom.conf
	│   └── Dockerfile
	├── psql
	│   └── custom.conf
	└── README.md

The bitcoinprivacy docker-compose uses the following docker images:

	https://hub.docker.com/_/postgres/

	https://hub.docker.com/r/ruimarinho/bitcoin-core/
	
	https://hub.docker.com/r/jorgemartinezpizarro/bge

	https://hub.docker.com/r/jorgemartinezpizarro/bgeapi

	https://hub.docker.com/r/jorgemartinezpizarro/bitcoinprivacy

To start the service it is a required a data folder with the following subfolders:

	/root/data/
		psql/
		bitcoin/
		blockchain/

and to export als environment variable the folder DATA_FOLDER=/root/data:

	export DATA_FOLDER=/root/data

To start the docker-compose project, install git, docker and docker-compose on your machine and run:

	git clone https://github.com/JorgeMartinezPizarro/bge-docker.git
	cd bge-docker
	docker-compose up -d
	
To build new versions of the docker images update the docker-compose file and use docker-compose build

Configuration from postgres and bitcoin can be modified using the environment variables set in the docker-compose.yml file. 
