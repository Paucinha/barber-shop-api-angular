FROM node:22.14.0

RUN apt-get update && apt-get install -qq -y --no-install-recommends

ENV INSTALL_PATH /barber-shop

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY package*.json ./

RUN yarn global add @angular/cli@1 19.2.0
RUN npm i -g @angular/cli@ 19.2.0  --save-dev

#RUN yarn install
#RUN npm install

COPY . .