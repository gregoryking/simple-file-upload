FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY ./example . 
COPY ./lib ./lib

EXPOSE 443
VOLUME /usr/src/app/uploads
CMD [ "node", "server.js" ]



