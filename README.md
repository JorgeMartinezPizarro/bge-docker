Or how to start a bitcoin core full node with an extra awesome bitcoin privacy graph explorer behind:

To start the services individually, use the start target

Folders structure:

	README.md
	docker-compose.yml
	play/
		Dockerfile
		Makefile
		play.conf
	bge/
		Dockerfile
		Makefile
		bge.conf
	bgeapi/
		Dockerfile
		Makefile
		bge.conf
	bitcoin/
		bitcoin.conf**
		Makefile
	postgres/
		postgres.conf**
		Makefile

To start the services it is a required a data folder with the following subfolders:

	/root/data/
		psql/
		bitcoin/
		blockchain/

where /root/data is the folder where thes subfolders are defined

To start the docker-compose project, install git, docker and docker-compose on your machine and run:

	git clone https://github.com/JorgeMartinezPizarro/bge-docker.git
	cd bge-docker
	export DATA_FOLDER=/root/data
	docker-compose up -d
	
The Makefiles contains targets start and stop to test locally each image standalone. 

The Dockerfiles together with a build and push target to make deployment of new images easy. 

Push command requires permissions to push docker images to the jorgemartinezpizarro/ repositories, allowed for bitcoinprivacy developers.

Configuration from postgres and bitcoin can be modified using the environment variables set in the docker-compose.yml file. 

** TODO: In next versions it will be allowed to config postgres and bitcoin using conf file.
