#!/bin/bash

if [ "$#" -ne "2" ];then
    echo "USAGE: $0 artifactId type"
    exit 1
fi

if [ "$2" == "web" ];then
    mvn archetype:generate \
        -DgroupId=personal.jlc \
        -DartifactId=$1 \
        -DarchetypeArtifactId=maven-archetype-quickstart \
        -DinteractiveMode=false
    exit 0
else
    mvn archetype:generate \
        -DgroupId=personal.jlc \
        -DartifactId=$1 \
        -DarchetypeArtifactId=maven-archetype-webapp \
        -DinteractiveMode=false
    exit 0
fi

exit 1
