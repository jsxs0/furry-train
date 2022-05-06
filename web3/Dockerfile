FROM node:14-alpine

WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN apk update && \
    apk add git && \
    apk add curl
RUN yarn install --frozen-lockfile

COPY . .

CMD ["yarn", "run", "dev"]

EXPOSE 3000