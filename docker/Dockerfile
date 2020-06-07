# ----------
# compile markup files
# copy and done
# optimize, minify css

FROM scratch as builder
WORKDIR home/app/
RUN ./render
COPY build/ ./

# ----------
FROM nginx:1.17-alpine

WORKDIR /usr/share/nginx/html
COPY $PWD/docker/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder home/app/build/* ./

