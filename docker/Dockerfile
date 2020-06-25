#-------
FROM pandoc/core as builder
RUN apk --no-cache add bash
WORKDIR /app/
COPY . .

# HINT: Because I'm building my html files in the container I use bash here.. 
# My script uses modern bash features like scoping and so on (declare, local etc.) that are not available for /bin/sh
RUN /bin/bash render build

#-------
FROM nginx:1.17-alpine
WORKDIR /usr/share/nginx/html
COPY $PWD/docker/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build/* ./
