## Use the lts version, more supported by queue frameworks.
FROM node:lts

# linux remote folder exec
WORKDIR /usr/src/app

COPY [".", "."]

RUN npm install -g npm
RUN npm install

# EXPOSE PORTS is override in docker-compose.yml

# "Show files in the remote docker container"
RUN /bin/sh -c 'ls -alF'

# ENTRYPOINT ["npm", "run", "debug"] is override in docker-compose.yml

