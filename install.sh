#!/bin/bash

#
#
# Configurations with docker-compose only, without Dockerfile definition
# Full docker, no local files
#
#
# clean
find . -name 'node_modules' -exec rm -rfv {} \;
find . -type f -name "package-lock.json" -exec rm -fv {} \; 
#
# install
cd ./config-prod/
docker-compose down
docker-compose -f docker-compose.yml up --build