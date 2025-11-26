FROM node:lts AS build
ADD . /app
WORKDIR /app
RUN npm install
RUN npm run build

FROM nginx
RUN rm -rf /usr/share/nginx/html	
EXPOSE 80
