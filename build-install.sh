#!/bin/bash 
set -e 
MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"
mvn -DskipTests -T 1C  install
