#!/bin/bash 
set -e 
MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"
mvn -T 1C clean compile assembly:single

