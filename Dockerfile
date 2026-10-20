FROM node:22.23.2-alpine

RUN apk add --no-cache zlib=1.3.2-r1

COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js
