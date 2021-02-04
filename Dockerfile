FROM node:15-buster-slim as build

RUN apt-get update && \
    apt-get install -y \
      build-essential \
      procps

WORKDIR /src

COPY ./package.json /yarn.lock /src/

RUN yarn install --check-files --frozen-lockfile --network-timeout 100000 --non-interactive

COPY ./ /src
