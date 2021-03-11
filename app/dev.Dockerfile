## Use the lts version, more supported by queue frameworks.
FROM node:lts

# linux remote folder exec
WORKDIR /usr/src/app

# EXPOSE PORTS is override in docker-compose.yml

RUN /bin/sh -c 'ls -alF'

ENTRYPOINT ["npm", "run", "debug"]

