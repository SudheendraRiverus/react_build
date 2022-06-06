FROM node:12.0
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
RUN npm install --global http-server
COPY . .
EXPOSE 3000
CMD http-server -p 3000
