#!/bin/bash

#docker rmi $(docker images -a | grep "^<none>" | awk '{print $3}')
docker rm --force -v $(docker ps -aq)