FROM node:14

COPY . /usr/app
WORKDIR /usr/app

RUN yarn global add typescript
RUN yarn install
RUN yarn build

CMD [ "yarn", "start" ]