#!/bin/sh

printf "\n........... Exiting script%s ............\n" \ $0

#
#
# Docker-compose + Dockerfile configuration
# Mix local node_modules + remote nodeserver
# --inspect-brk - brk means - stop before client code starting
#
#
# clean
find . -name 'node_modules' -exec rm -rf {} \;
find . -type f -name "package-lock.json" -exec rm -fv {} \; 
#
# install
cd ./app/
npm install
npm run lint
npm t
cd ../config-dev/
# docker-compose down
docker-compose -f ./docker-compose-dev.yml up --build
