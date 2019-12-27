#https://nodejs.org/zh-cn/docs/guides/nodejs-docker-webapp/
#FROM node:10
FROM node:10-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]

# docker build -t nodejs:latest . --no-cache
# docker run -p 32002:8080 -d nodejs:latest
# curl -i localhost:32002
