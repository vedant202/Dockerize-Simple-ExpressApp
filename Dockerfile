# FROM ubuntu

# RUN apt-get update
# RUN apt-get install -y curl
# RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
# RUN apt-get upgrade -y
# RUN apt-get install -y nodejs
FROM node:18-alpine

WORKDIR app/

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY main.js .

ENTRYPOINT ["node","main.js"]