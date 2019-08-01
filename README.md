https://github.com/fzhygithub/docker_build_nodejs.git


…or create a new repository on the command line
echo "# docker_build_nodejs" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/fzhygithub/docker_build_nodejs.git
git push -u origin master

…or push an existing repository from the command line
git remote add origin https://github.com/fzhygithub/docker_build_nodejs.git
git push -u origin master

…or import code from another repository
You can initialize this repository with code from a Subversion, Mercurial, or TFS project.



docker load -i node10.tgz



#https://nodejs.org/zh-cn/docs/guides/nodejs-docker-webapp/
FROM node:10

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
