#!/bin/bash

#
#
# Docker-compose + Dockerfile configuration
# Mix local node_modules + remote nodeserver
# --inspect-brk - brk means - stop before client code starting
#
rm -rfv app/node_modules ; rm -fv app/package-lock.json ;
clear
# sudo pkill node
docker-compose down
cd app
npm install
cd ..
docker-compose -f ./docker-compose-dev.yml up --build