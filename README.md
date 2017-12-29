To start the services individually:

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

To start the service it is a required a data folder with the following subfolders:

	/root/data/
		psql/
		bitcoin/
		blockchain/

To start the docker-compose project, install docker and docker-compose on your machine and run:

	
	git clone https://github.com/JorgeMartinezPizarro/bge-docker.git
	cd bge-docker
	export DATA_FOLDER=/root/data
	docker-compose up -d
	
