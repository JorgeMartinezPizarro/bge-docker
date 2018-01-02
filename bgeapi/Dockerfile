FROM jorgemartinezpizarro/jdk:8-full as builder

WORKDIR /root

RUN git clone https://github.com/bitcoinprivacy/Bitcoin-Graph-Explorer.git

WORKDIR /root/Bitcoin-Graph-Explorer

RUN git checkout development
RUN sbt stage publish-local

WORKDIR /root/Bitcoin-Graph-Explorer/api

RUN sbt assembly

FROM jorgemartinezpizarro/jre:SNAPSHOT

COPY --from=builder /root/Bitcoin-Graph-Explorer/api/target/scala-2.11/bgeapi-assembly-3.3-SNAPSHOT.jar /root/bge/bgeapi.jar

ENTRYPOINT ["java", "-Dconfig.file=/conf/bgeapi.conf", "-Dlogback.configurationFile=/conf/logback.xml", "-jar", "/root/bge/bgeapi.jar", "start"]
