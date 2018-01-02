FROM jorgemartinezpizarro/jdk:8-full as builder

WORKDIR /root

RUN git clone https://github.com/bitcoinprivacy/Bitcoin-Graph-Explorer.git

WORKDIR /root/Bitcoin-Graph-Explorer

RUN git checkout development
RUN sbt assembly

FROM jorgemartinezpizarro/jre:SNAPSHOT

COPY --from=builder /root/Bitcoin-Graph-Explorer/target/scala-2.11/bge-assembly-3.3-SNAPSHOT.jar /root/bge/bge.jar

ENTRYPOINT ["java", "-Dconfig.file=/conf/bge.conf", "-Dlogback.configurationFile=/conf/logback.xml", "-jar", "/root/bge/bge.jar", "start"]
