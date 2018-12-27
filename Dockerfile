FROM node:alpine

ENV NODE_ENV production
ENV PORT 3000

WORKDIR /usr/app

RUN apk upgrade --update
RUN apk add mongodb

COPY . .
EXPOSE 3000

CMD ["node", "index.js"]
