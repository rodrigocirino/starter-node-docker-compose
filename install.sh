#!/bin/sh

printf "\n........... Starting script%s ............\n" \ $0

#
#
# Configurations with docker-compose only, without Dockerfile definition
# Full docker, no local files
#
#
# clean
find . -name 'node_modules' -exec rm -rf {} \;
find . -type f -name "package-lock.json" -exec rm -fv {} \; 
#
# install
cd ./config-prod/
docker-compose down
docker-compose -f docker-compose.yml up --build