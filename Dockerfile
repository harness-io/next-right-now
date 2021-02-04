FROM node:15-buster-slim as build

RUN apt-get update && \
    apt-get install -y \
      build-essential \
      procps

# WORKDIR /src

# COPY ./yarn.lock ./package.json /src/

# RUN ls -la && yarn install --check-files

# COPY ./ /src

# FROM node:15-buster-slim as app


