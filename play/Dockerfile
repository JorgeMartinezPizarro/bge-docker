FROM debian AS builder

WORKDIR /root
#/usr/lib/postgresql/9.6/bin/pg_ctl -D /var/lib/postgresql/9.6/main/ -l logfile start
ADD . /root/

RUN apt-get update
RUN apt-get install wget apt-utils apt-transport-https fakeroot default-jdk default-jre dirmngr git sudo ca-certificates unzip -y
RUN echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
RUN apt-get update
RUN apt-get install sbt
RUN git clone https://github.com/bitcoinprivacy/play-bitcoinprivacy.git

WORKDIR /root/play-bitcoinprivacy

RUN sbt assembly

FROM openjdk:8-jre-alpine

WORKDIR /root

COPY --from=builder /root/play-bitcoinprivacy/target/scala-2.11/play-bitcoinprivacy-assembly-2.0.jar /root/play-bitcoinprivacy/bitcoinprivacy.jar
