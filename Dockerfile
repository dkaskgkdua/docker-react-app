FROM node:alpine

WORKDIR '/usr/src/app'

COPY package.json ./

RUN npm install

COPY ./ ./

CMD ["npm", "run", "build"]

FROM nginx
EXPOSE 80
COPY --from=0 /usr/src/app/build /usr/share/nginx/html

# docker build dkaskgkdua/docker-react-app .
# docker run -p 8080:80 dkaskgkdua/docker-react-app      nginx는 80포트가 기본