FROM node:18.6.0-slim
WORKDIR /usr/src/app
COPY ["package.json", "npm-shrinkwrap.json*", "./"]
RUN npm install 
COPY . .
RUN chown -R node /usr/src/app
USER node
CMD ["npm", "test"]
