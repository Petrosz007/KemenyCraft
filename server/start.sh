#!/bin/bash

SERVER_JAR=spigot_1.19.jar

java -Xms10G -Xmx10G -XX:+UseG1GC -jar $SERVER_JAR nogui
