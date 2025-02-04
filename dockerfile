FROM node:16
WORKDIR /home/anuradha/Desktop/abc
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "app.js"]
EXPOSE 3000
