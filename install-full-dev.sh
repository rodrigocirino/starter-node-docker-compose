#!/bin/bash

#
#
# Configurations with docker-compose only, without Dockerfile definition
# Mix local node_modules + remote nodeserver
#
#
rm -rfv app/node_modules ; rm -fv app/package-lock.json ;
docker-compose down
cd app
npm install
cd ..
docker-compose -f ./docker-compose-full-dev.yml up --build