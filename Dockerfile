FROM node:12

WORKDIR /usr/app

# For package-lock.json
COPY package*.json ./

RUN npm install -g yarn
RUN yarn

COPY . .

EXPOSE 8080
CMD ["npm", "start"]
