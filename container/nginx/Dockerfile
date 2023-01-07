
# Dockerfile
# docker build -t ngx-app .
# docker build -t ngx-app:1.0 .

ARG IMAGE_BASE="nginx"
ARG IMAGE_TAG="1.21-alpine"

FROM ${IMAGE_BASE}:${IMAGE_TAG}

COPY ./default.conf /etc/nginx/conf.d/

RUN echo '<h1>Hello, Docker!</h1>' > /usr/share/nginx/html/index.html

EXPOSE 80 8080 8081 8082 8083

WORKDIR /etc/nginx