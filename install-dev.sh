#!/bin/sh

printf "\n........... Starting script%s ............\n" \ $0

#
#
# Docker-compose + Dockerfile configuration
# Mix = local node_modules + remote nodeserver
# Use --inspect-brk = brk means, stop before the client code starting
#
#

# clean old dependencies
find . -name 'node_modules' -exec rm -rf {} \;
find . -type f -name "package-lock.json" -exec rm -fv {} \; 

# install dependencies
cd ./app/
npm install

# run eslint and prettier
npm run lint

# run jest with mocks
npm t

# up docker container
cd ../config-dev/
# clean old containers
docker-compose down
# up container with specific yaml config
docker-compose -f ./docker-compose-dev.yml up --build
