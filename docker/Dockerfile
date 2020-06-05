# ----------
FROM mhart/alpine-node:latest as builder

WORKDIR home/app/
RUN apk --no-cache add ca-certificates && \
		apk add --update python3 make g++ && \
		rm -rf /var/cache/apk/*

COPY src/ package.json package-lock.json ./

RUN npm ci && \
		npm run build

# ----------
FROM nginx:1.17-alpine

WORKDIR /usr/share/nginx/html
COPY $PWD/docker/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder home/app/build/* ./

