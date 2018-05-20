FROM jorgemartinezpizarro/jdk:8-full AS builder

WORKDIR /root

RUN git clone https://github.com/bitcoinprivacy/play-bitcoinprivacy.git

WORKDIR /root/play-bitcoinprivacy

RUN sbt assembly

FROM jorgemartinezpizarro/jre:SNAPSHOT

COPY --from=builder /root/play-bitcoinprivacy/target/scala-2.11/play-bitcoinprivacy-assembly-2.0.jar /root/play-bitcoinprivacy/bitcoinprivacy.jar

ENTRYPOINT ["java", "-Dconfig.file=/conf/play.conf", "-Dlogback.configurationFile=/conf/logback.xml", "-jar", "/root/play-bitcoinprivacy/bitcoinprivacy.jar"]
