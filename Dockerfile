FROM node:14-alpine

WORKDIR /usr/app

COPY package.json  package-lock.json ./

COPY . .

RUN yarn

EXPOSE 33333

CMD [ "yarn", "start" ]