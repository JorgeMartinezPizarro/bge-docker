#!/bin/bash

rm /RUNNING_PID -f
java -Dconfig.file=/conf/play.conf -Dlogback.configurationFile=/conf/logback.xml -jar /root/play-bitcoinprivacy/bitcoinprivacy.jar
