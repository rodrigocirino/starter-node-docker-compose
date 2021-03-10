#!/bin/bash

#
#
# Configurations with docker-compose only, without Dockerfile definition
# Full docker, no local files
#
#
rm -rfv app/node_modules ; rm -fv app/package-lock.json ;
docker-compose down
docker-compose -f ./docker-compose.yml up --build