FROM pandoc/core as builder
RUN apk --no-cache add bash
WORKDIR /app/
COPY . .

# Need bash for the script to execute
RUN apk --no-cache add bash
RUN /bin/bash render -b
RUN apk --no-cache del bash

#-------
FROM nginx:1.17-alpine
WORKDIR /usr/share/nginx/html
COPY $PWD/docker/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build/* ./
