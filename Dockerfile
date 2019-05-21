FROM alpine:3.5

RUN apk add nodejs --update

WORKDIR /var/apps

COPY index.js .

COPY package.json .

EXPOSE 3000

RUN npm install

CMD node index.js
