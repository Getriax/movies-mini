FROM node:alpine
ENV NODE_ENV production

WORKDIR /usr/src/app

RUN apk upgrade --update
RUN apk add mongodb

COPY . .
EXPOSE 3000

CMD ["node", "index.js"]
