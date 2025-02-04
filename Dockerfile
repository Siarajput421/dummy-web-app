FROM node:16
WORKDIR /home/anuradha/Downloads/dummy-web-app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "app.js"]
EXPOSE 3000
