FROM node:4.4.2

RUN apt-get update

RUN mkdir -p /demo_base

WORKDIR /demo_base

COPY package.json /demo_base

RUN npm install

COPY . /demo_base/demo

WORKDIR /demo_base/demo

EXPOSE 9000

CMD ["node", "server"]

