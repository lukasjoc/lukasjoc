#-------
FROM pandoc/core as builder
WORKDIR /app/
COPY . .
RUN /bin/sh render build

#-------
FROM nginx:1.17-alpine
WORKDIR /usr/share/nginx/html
COPY $PWD/docker/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build/* ./
