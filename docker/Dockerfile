FROM docker.io/pandoc/core:latest as builder
RUN apk --no-cache add bash
WORKDIR /app/
COPY . .
RUN apk --no-cache add bash tree
RUN /bin/bash render build
RUN apk --no-cache del bash tree

#-------
FROM docker.io/library/nginx:alpine
WORKDIR /usr/share/nginx/html
COPY $PWD/docker/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build/* ./
