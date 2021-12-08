FROM node:alpine as builder

WORKDIR '/usr/src/app'

COPY package.json .

RUN npm install

COPY ./ ./

RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /usr/src/app/build /usr/share/nginx/html

# docker build dkaskgkdua/docker-react-app .
# docker run -p 8080:80 dkaskgkdua/docker-react-app      nginx는 80포트가 기본