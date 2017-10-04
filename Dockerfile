FROM node:4-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/package.json
RUN npm install
COPY . /usr/src/app
EXPOSE 8080
CMD [ "npm", "start" ]
