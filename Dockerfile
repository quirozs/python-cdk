FROM --platform=linux/amd64 python:3.11-slim

RUN mkdir /pipeline
WORKDIR /pipeline

RUN apt -y update
RUN apt -y install curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt -y install nodejs
RUN npm install -g aws-cdk
