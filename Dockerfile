FROM docker.io/node:6.11.5-alpine

COPY package.json /tmp/package.json

RUN cd /tmp && yarn && cd .. && mkdir app && mv /tmp/node_modules /app

COPY . /app

WORKDIR /app

EXPOSE 80

CMD ["npm","start"]