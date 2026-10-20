FROM node:22.23.2-alpine

RUN apk add --no-cache --upgrade musl musl-utils zlib

COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js
