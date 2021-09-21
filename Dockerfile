FROM node:8 as build

RUN mkdir /app
WORKDIR /app

COPY package.json /app

RUN npm install express

RUN npm install
#RUN npm run build

#FROM nginx:latest
#COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 8081

CMD ["npm", "start"]
