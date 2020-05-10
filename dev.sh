#!/bin/bash

# docker build -t lukasjoc:devel -f docker/Dockerfile . && \
# docker run --name lukasjoc_devel -d -p 80:80 lukasjoc:devel

if ! [ -d node_modules ]; then
	npm install
fi

npm run serve
