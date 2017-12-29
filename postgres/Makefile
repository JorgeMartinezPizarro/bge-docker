start:
	docker run --network=bge_network -v /root/bge/psql:/var/lib/postgresql/data -p 5432:5432 -itd --name bitcoinprivacy_postgres -e POSTGRES_PASSWORD=trivial -e POSTGRES_USER=root -e POSTGRES_DB=postgres postgres:10.1 /bin/bash
stop:
	docker kill bitcoinprivacy_postgres || true
	docker rm bitcoinprivacy_postgres
