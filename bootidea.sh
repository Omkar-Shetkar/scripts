#!/bin/bash

# Unzips Spring Boot .zip project and opens the folder in IntelliJ Idea

function uao() {
 unzip $1
 rm $1
 NAME=$(echo $1 | cut -d'.' -f 1)
 echo $NAME
 intellij-idea-community $NAME 2> /dev/null &

}
