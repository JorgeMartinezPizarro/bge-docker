FROM debian

WORKDIR /root

RUN apt-get update && \
 apt-get install maven sudo wget apt-utils apt-transport-https fakeroot default-jdk default-jre dirmngr git tmux ca-certificates -y && \
 echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list && \
 apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
 apt-get update && \
 apt-get install sbt && \
 git clone https://github.com/bitcoinj/bitcoinj.git && \
 cd bitcoinj && \
 git checkout segwit && \
 mvn install || true

