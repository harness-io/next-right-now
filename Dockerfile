# Base container for installing build tools
FROM node:15-buster-slim as build-tools

RUN apt-get update && \
    apt-get install -y \
      build-essential \
      git

# Container that will be used for running the application
FROM node:15-buster-slim as app

COPY ./ /src

WORKDIR /src

# COPY ./package.json /yarn.lock /src/

# RUN yarn install --check-files --frozen-lockfile --network-timeout 100000 --non-interactive

# COPY ./ /src
