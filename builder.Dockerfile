#
# Builder stage
# This state compile our Typescript to get the JavaScript code
#
FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./
COPY tsconfig*.json ./
COPY ./src ./src

RUN npm ci --quiet && npm run build
